#Descendants of class Exception are used to communicate between Kernel#raise and rescue statements in begin ... end blocks. Exception objects carry information about the exception – its type (the exception’s class name), an optional descriptive string, and optional traceback information. Exception subclasses may add additional information like NameError#name.

# Programs may make subclasses of Exception, typically of StandardError or RuntimeError, to provide custom classes and add additional information. See the subclass list below for defaults for raise and rescue.

# class MyCrazyException < StandardError
# end
#
# # Doesn't work as expected.
# begin
#   raise MyCrazyException, "Oh snap!"
# rescue
#   puts $!.backtrace.inspect
#   puts $!.message
# end

class BankException < StandardError
    class DebitCardError < BankException
    end

    class CreditCardError < BankException
    end
end

begin
#
#
rescue DebitCardError
#
#
rescue CreditCardError
#
#
end
