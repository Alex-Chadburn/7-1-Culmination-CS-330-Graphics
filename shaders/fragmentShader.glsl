#version 440 core

struct Material {
    vec3 ambientColor;
    float ambientStrength;
    vec3 diffuseColor;
    vec3 specularColor;
    float shininess;
};

struct LightSource {
    vec3 position;
    vec3 ambientColor;
    vec3 diffuseColor;
    vec3 specularColor;
    float focalStrength;
    float specularIntensity;
};

#define TOTAL_LIGHTS 4

in vec3 fragmentPosition;
in vec3 fragmentVertexNormal;
in vec2 fragmentTextureCoordinate;

out vec4 outFragmentColor;

uniform bool bUseTexture = false;
uniform bool bUseLighting = false;
uniform vec4 objectColor = vec4(1.0f);
uniform sampler2D objectTexture;
uniform vec3 viewPosition;
uniform vec2 UVscale = vec2(1.0f, 1.0f);
uniform LightSource lightSources[TOTAL_LIGHTS];
uniform Material material;

// Calculates diffuse and specular lighting from a single light source
vec3 CalcLightSource(LightSource light, vec3 lightNormal, vec3 vertexPosition, vec3 viewDirection) {
    vec3 diffuse;
    vec3 specular;

    vec3 lightDirection = normalize(light.position - vertexPosition);
    float impact = max(dot(lightNormal, lightDirection), 0.0);
    diffuse = impact * material.diffuseColor;

    vec3 reflectDir = reflect(-lightDirection, lightNormal);
    float specularComponent = pow(max(dot(viewDirection, reflectDir), 0.0), light.focalStrength);
    specular = (light.specularIntensity * material.shininess) * specularComponent * material.specularColor;

    return vec3(0.0); // disables directional lighting

}

void main() {
    if (bUseLighting) {
        vec3 lightNormal = normalize(fragmentVertexNormal);
        vec3 viewDirection = normalize(viewPosition - fragmentPosition);

        // Global ambient light (material + all light ambient contributions)
        vec3 ambient = material.ambientColor * material.ambientStrength;
        for (int i = 0; i < TOTAL_LIGHTS; i++) {
            ambient += lightSources[i].ambientColor;
        }

        // Accumulate diffuse and specular from all lights
        vec3 lighting = vec3(0.0f);
        for (int i = 0; i < TOTAL_LIGHTS; i++) {
            lighting += CalcLightSource(lightSources[i], lightNormal, fragmentPosition, viewDirection);
        }

        vec3 finalColor = ambient + lighting;

        if (bUseTexture) {
            vec4 textureColor = texture(objectTexture, fragmentTextureCoordinate * UVscale);
            outFragmentColor = vec4(finalColor * textureColor.rgb, 1.0);
        } else {
            outFragmentColor = vec4(finalColor * objectColor.rgb, objectColor.a);
        }
    } else {
        if (bUseTexture) {
            outFragmentColor = texture(objectTexture, fragmentTextureCoordinate * UVscale);
        } else {
            outFragmentColor = objectColor;
        }
    }
}
