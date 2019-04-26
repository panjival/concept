class ErrorsController < ApplicationController

    

    def unacceptable
        render :status => 422
    end
    # ------------------------------------------------------------------------
    def bad_request
        render :status => 400
    end
    def unauthorized
        render :status => 401
    end

    def payment_required
        render :status => 402
    end
    def forbidden
        render :status => 403
    end
    def not_found
        render :status => 404
    end
    def method_not_allowed
        render :status => 405
    end
    def not_acceptable
        render :status => 406
    end
    def proxy_authentication_required
        render :status => 407
    end
    def request_timeout
        render :status => 408
    end
    def conflict
        render :status => 409
    end
    def gone
        render :status => 410
    end
    def length_required
        render :status => 411
    end
    def precondition_failed
        render :status => 412
    end
    def payload_too_large
        render :status => 413
    end
    def uri_too_long
        render :status => 414
    end
    def unsupported_media_type
        render :status => 415
    end
    def range_not_satisfiable
        render :status => 416
    end
    def expectation_failed
        render :status => 417
    end
    def im_a_teapot
        render :status => 418
    end
    def misdirected_request
        render :status => 421
    end
    def unprocessable_entity
        render :status => 422
    end
    def locked
        render :status => 423
    end
    def failed_dependency
        render :status => 424
    end
    def too_early
        render :status => 425
    end
    def upgrade_required
        render :status => 426
    end
    def precondition_required
        render :status => 428
    end
    def too_many_requests
        render :status => 429
    end
    def request_header_fields_too_large
        render :status => 431
    end
    def unavailable_for_legal_reasons
        render :status => 451
    end
    # ------------------------------------
    def internal_error
        render :status => 500
    end
    def not_implemented
        render :status => 501
    end
    def bad_gateway
        render :status => 502
    end
    def service_unavailable
        render :status => 503
    end
    def gateway_timeout
        render :status => 504
    end
    def http_version_not_supported
        render :status => 505
    end
    def variant_also_negotiates
        render :status => 506
    end
    def insufficient_storage
        render :status => 507
    end
    def loop_detected
        render :status => 508
    end
    def not_extended
        render :status => 510
    end
    def network_authentication_required
        render :status => 511
    end

end
