class Api::V1::RequestsController < ApplicationController
    protect_from_forgery with: :exception

    def create
        @request = Request.new(request_params)
        if @request.save
            render json: @request
        else
            render json: {error: @request.errors.full_messages}, status: :unprocessable_entity            
        end
    end
    private 
    def request_params
      params.require(:request).permit(:paperform_id,
                                      :first_name,
                                      :last_name,
                                      :email,
                                      :mobile,
                                      :preferred_contact,
                                      :new_client,
                                      :description,
                                      :color_or_gray,
                                      :ref_pic_urls,
                                      :size,
                                      :placement,
                                      :cover_up,
                                      :cover_up_ref_pic_url,
                                      :pref_artist,
                                      :pref_days,
                                      :pref_times,
                                      :local_client,
                                      :coming_from,
                                      :client_notes,
                                      :ip_address
                                    )
    end
end
