module PessoalHelper
    def wishlevel(i)
        case i
        when 0
            return "Quero, mas não muito."
        when 1
            return "Quero um pouco."
        when 2
            return "Quero mesmo!"
        when 3
            return "Quero bastante!"
        when 4
            return "Quero MUITO!"
        when 5
            return "QUERO ABSURDOS!"
        when 6
            return "OMG!"
        end
    end
end
