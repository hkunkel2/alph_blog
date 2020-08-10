                    <% if (logged_in? && user == current_user) || current_user.admin? %>
                    <%= link_to "Edit", edit_user_path(user.id), class: "btn btn-primary"%>
                    <% end %>
                    <% if current_user.admin? %>
                        <%= link_to "delete", user_path(user), class: "btn btn-danger", method: :delete, data: {confirm: "Are you sure?"} %>
                    <% end %>