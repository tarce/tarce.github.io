classdef myVirus < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure       matlab.ui.Figure
        Label          matlab.ui.control.Label
        SubmitButton   matlab.ui.control.Button
        Password       matlab.ui.control.EditField
        PasswordLabel  matlab.ui.control.Label
        Username       matlab.ui.control.EditField
        UsernameLabel  matlab.ui.control.Label
        Image          matlab.ui.control.Image
        StartButton    matlab.ui.control.Button
    end



    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: StartButton
        function StartButtonPushed(app, event)
            
            % Hide the start button.
            app.StartButton.Enable = false;
            app.StartButton.Visible = false;
                       
            % Display a pop-up message.
            uiwait(msgbox('You are about to execute a virus.  Proceed?','STUXNET','modal'));
            
            % Display a progress bar. 
            progress = waitbar(0,'Please wait...');
            pause(0.5);
            
            waitbar(0.33, progress, 'Loading virus...');
            pause(1);
            
            waitbar(0.66, progress, 'Injecting code...');
            pause(1);
            
            waitbar(1, progress, 'Virus ready.');
            pause(2);
            
            close(progress);
            
            % Display an image.
            nsa = webread('https://upload.wikimedia.org/wikipedia/commons/2/20/Nsa-eagle-white.jpg');            
            app.Image.ImageSource = nsa;
            app.Image.Visible = true;
            
            % Display a new message.
            app.Label.Text = 'You are accessing a U.S. Government Information System classified TOP SECRET. Please proceed with identification.';
            
            % Enable and show username, password and submit button.
            app.Username.Visible = true;
            app.UsernameLabel.Visible = true;
            app.Password.Visible = true;
            app.PasswordLabel.Visible = true;
            app.SubmitButton.Visible = true;
            
        end

        % Button pushed function: SubmitButton
        function SubmitButtonPushed(app, event)
            
            % Hide and disable username, password and submit button.
            app.Username.Visible = false;
            app.UsernameLabel.Visible = false;
            app.Password.Visible = false;
            app.PasswordLabel.Visible = false;
            app.SubmitButton.Visible = false;            
            app.SubmitButton.Enable = false;
            
            % Display a pop-up message
            uiwait(msgbox('U.S. First Strike Response.  Welcome to Nuclear Substation A.  Initiate launch sequence?','Nuclear Substation A','modal'));
            
            % Display a new message.
            app.Label.Text = 'Nuclear Launch Initiated.';
                      
            % Display a countdown progress bar.
            progress = waitbar(0,'Target Acquired');
            pause(0.5);
            
            waitbar(0.2, progress, 'Launching...');
            pause(1);
            
            waitbar(0.4, progress, '5');
            pause(1);
            
            waitbar(0.5, progress, '4');
            pause(1);
            
            waitbar(0.6, progress, '3');
            pause(1);
            
            waitbar(0.7, progress, '2');
            pause(1);
            
            waitbar(0.8, progress, '1');
            pause(1);
                     
            waitbar(1, progress, 'Launch Success.');
            pause(3);
            
            close(progress);
            
            % Display a new image.
            rocketman = webread('https://bluegrasstoday.com/wp-content/uploads/2018/11/rocketman.jpg');            
            app.Image.ImageSource = rocketman;
            
            % Display a new message.
            app.Label.Text = 'Nuclear launch detected.  Have a nice day!';
            
            pause(4);
            
            web('https://www.youtube.com/watch?v=9EjS757ufhs')           
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create StartButton
            app.StartButton = uibutton(app.UIFigure, 'push');
            app.StartButton.ButtonPushedFcn = createCallbackFcn(app, @StartButtonPushed, true);
            app.StartButton.Position = [271 204 100 22];
            app.StartButton.Text = 'Start';

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.Visible = 'off';
            app.Image.Position = [237 326 167 129];

            % Create UsernameLabel
            app.UsernameLabel = uilabel(app.UIFigure);
            app.UsernameLabel.HorizontalAlignment = 'right';
            app.UsernameLabel.Visible = 'off';
            app.UsernameLabel.Position = [217 164 64 22];
            app.UsernameLabel.Text = 'Username:';

            % Create Username
            app.Username = uieditfield(app.UIFigure, 'text');
            app.Username.Visible = 'off';
            app.Username.Position = [296 164 100 22];

            % Create PasswordLabel
            app.PasswordLabel = uilabel(app.UIFigure);
            app.PasswordLabel.HorizontalAlignment = 'right';
            app.PasswordLabel.Visible = 'off';
            app.PasswordLabel.Position = [223 122 58 22];
            app.PasswordLabel.Text = 'Password';

            % Create Password
            app.Password = uieditfield(app.UIFigure, 'text');
            app.Password.Visible = 'off';
            app.Password.Position = [296 122 100 22];

            % Create SubmitButton
            app.SubmitButton = uibutton(app.UIFigure, 'push');
            app.SubmitButton.ButtonPushedFcn = createCallbackFcn(app, @SubmitButtonPushed, true);
            app.SubmitButton.Visible = 'off';
            app.SubmitButton.Position = [271 76 100 22];
            app.SubmitButton.Text = 'Submit';

            % Create Label
            app.Label = uilabel(app.UIFigure);
            app.Label.HorizontalAlignment = 'center';
            app.Label.WordWrap = 'on';
            app.Label.Position = [155 241 332 76];
            app.Label.Text = 'Welcome to terminal 01.  Push ''Start'' to begin.';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = myVirus

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
