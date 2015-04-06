
{{ content() }}

<div class="page-header">
    <h2>Register for Naked</h2>
</div>

{{ form('register', 'id': 'registerForm', 'role': 'form') }}

    <fieldset>

        <div class="control-group">
            <label for="name">Name</label>
            <div class="controls">
                {{ text_field('name', 'class': "form-control") }}
                <p class="help-block">(required)</p>
                <div class="alert alert-warning" id="name_alert">
                    <strong>Warning!</strong> Please enter your full name
                </div>
            </div>
        </div>

        <div class="control-group">
            <label for="username">Username</label>
            <div class="controls">
                {{ text_field('username', 'class': "form-control") }}
                <p class="help-block">(required)</p>
                <div class="alert alert-warning" id="username_alert">
                    <strong>Warning!</strong> Please enter your desired user name
                </div>
            </div>
        </div>

        <div class="control-group">
            <label for="email">Email</label>
            <div class="controls">
                {{ text_field('email', 'class': "form-control") }}
                <p class="help-block">(required)</p>
                <div class="alert alert-warning" id="email_alert">
                    <strong>Warning!</strong> Please enter your email
                </div>
            </div>
        </div>

        <div class="control-group">
            <label for="password">Password</label>
            <div class="controls">
                {{ password_field('password', 'class': "form-control") }}
                <p class="help-block">(minimum 8 characters)</p>
                <div class="alert alert-warning" id="password_alert">
                    <strong>Warning!</strong> Please provide a valid password
                </div>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="repeatPassword">Repeat Password</label>
            <div class="controls">
                {{ password_field('repeatPassword', 'class': 'input-xlarge') }}
                <div class="alert" id="repeatPassword_alert">
                    <strong>Warning!</strong> The password does not match
                </div>
            </div>
        </div>

        <div class="form-actions">
            {{ submit_button('Register', 'class': 'btn btn-primary') }}
            <p class="help-block">By signing up, you accept terms of use and privacy policy.</p>
        </div>

    </fieldset>
</form>
