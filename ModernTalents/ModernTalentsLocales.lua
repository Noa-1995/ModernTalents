------------------------------------------------------
-- ModernTalentsLocales.lua
-- Sistema de localización de clases con soporte de género
-- Autores: Clancy - Noa
------------------------------------------------------

if not ModernTalentsLocales then ModernTalentsLocales = {} end

-- Tabla de clases localizadas (masculino/femenino)
ModernTalentsLocales.ClassNames = {
    WARRIOR       = { male = "Guerrero", female = "Guerrera" },
    PALADIN       = { male = "Paladín", female = "Paladina" },
    HUNTER        = { male = "Cazador", female = "Cazadora" },
    ROGUE         = { male = "Pícaro",  female = "Pícara" },
    PRIEST        = { male = "Sacerdote", female = "Sacerdotisa" },
    DEATHKNIGHT   = { male = "Caballero de la Muerte", female = "Caballero de la Muerte" },
    SHAMAN        = { male = "Chamán", female = "Chamana" },
    MAGE          = { male = "Mago", female = "Maga" },
    WARLOCK       = { male = "Brujo", female = "Bruja" },
    DRUID         = { male = "Druida", female = "Druida" }
}

------------------------------------------------------
-- Función principal: obtiene nombre localizado
------------------------------------------------------
function ModernTalentsLocales:GetLocalizedClassName(classKey)
    if not classKey then return "Desconocido" end

    local locale = GetLocale()
    if locale ~= "esES" and locale ~= "esMX" then
        return classKey
    end

    local gender = UnitSex("player") -- 2 = hombre, 3 = mujer
    local data = self.ClassNames[classKey]

    if not data then return classKey end

    if gender == 3 then
        return data.female or data.male
    else
        return data.male or data.female
    end
end

------------------------------------------------------
-- Función inversa: obtiene clave de clase desde nombre localizado
------------------------------------------------------
function ModernTalentsLocales:GetClassKey(localizedName)
    if not localizedName then return nil end
    localizedName = localizedName:lower()

    for key, names in pairs(self.ClassNames) do
        if names.male:lower() == localizedName or names.female:lower() == localizedName then
            return key
        end
    end

    return nil
end