Vim�UnDo� m=�����{T#����Ҳ�!�A�g�*lm!j      0    yaxis = dict(title = 'Uniform distribution')      0       9       9   9        _a��   	 _�       !                      ����                                                                                                                                                                                                                                                                                                                                                  v        _a��     �   
            import plotly.offline as pyo   import plotly.graph_objs as go   import numpy as np5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                  v        _a�	     �              5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  v        _a�
     �                5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                  v        _a�     �                random_x = np.random.randn(1000)   random_y = np.random.rand(1000)5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                  v        _a�'     �              5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                   v        _a�,     �                �                   data = [go.Scatter(   )]�                   �                   x = random_x,       y = random_y,       mode = 'markers'5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�U     �                 �         !      layout = go.Layout(   )�         "          �         #      $    title = Random Data Scatterplot'5�_�   &   (           '      $    ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�l     �         #      %    title = Random Data Scatterplot';5�_�   '   )           (      $    ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�m     �         #      $    title = Random Data Scatterplot'5�_�   (   *           )      $    ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�o     �         #      %    title = Random Data Scatterplot',5�_�   )   +           *      $    ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�q     �         #      %    title = Random Data Scatterplot'j5�_�   *   -           +           ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�x     �         #          x = random_x,5�_�   +   .   ,       -          ����                                                                                                                                                                                                                                                                                                                                       #           v        _aЃ     �         #      '    title = ''Random Data Scatterplot'j5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                       #           v        _aЄ     �         #      &    title = 'Random Data Scatterplot'j5�_�   .   0           /      %    ����                                                                                                                                                                                                                                                                                                                                       #           v        _aІ     �         #      %    title = 'Random Data Scatterplot'5�_�   /   1           0      %    ����                                                                                                                                                                                                                                                                                                                                       $           v        _aЇ     �         #      &    title = 'Random Data Scatterplot',       xaxis = dict(title = '')5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                       $           v        _a�     �         $      layout = go.Layout(5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                       $           v        _a�     �         $      /    xaxis = dict(title = 'Normal distribution')5�_�   2   4           3      /    ����                                                                                                                                                                                                                                                                                                                                       %           v        _a�     �         $      0    xaxis = dict(title = 'Normal distribution'),   0    yaxis = dict(title = 'Uniform distribution')5�_�   3   5           4   !        ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�/     �       #        5�_�   4   6           5   !        ����                                                                                                                                                                                                                                                                                                                                       "           v        _a�0     �       "        5�_�   5   7           6   "        ����                                                                                                                                                                                                                                                                                                                                       "           v        _a�0     �   "   #           �   "   $               5�_�   6   8           7   $        ����                                                                                                                                                                                                                                                                                                                                                             _a�5    �   #   $   $       �   #   %   %      -fig = go.Figure(data = data, layout = layout)   ,pyo.plot(fig, filename = 'scatterplot.html')5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                             _aь    �          &          �      !   '          hovermode = 'closest'5�_�   8               9      0    ����                                                                                                                                                                                                                                                                                                                                                             _aѩ    �          '      1    yaxis = dict(title = 'Uniform distribution'),5�_�   +           -   ,          ����                                                                                                                                                                                                                                                                                                                                       #           v        _a�     �         #      '    title = ()Random Data Scatterplot'j5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        _a�     �                 5# Create a fig from data and layout, and plot the fig�              �                 #######   =# Objective: Create a scatterplot of 1000 random data points.   <# x-axis values should come from a normal distribution using   # np.random.randn(1000)   H# y-axis values should come from a uniform distribution over [0,1) using   # np.random.rand(1000)   ######       # Perform imports here:       import plotly.offline as pyo   import plotly.graph_objs as go   import numpy as np       # Define a data variable        random_x = np.random.randn(1000)   random_y = np.random.rand(1000)       data = [go.Scatter(       )]       # Define the layout                       5# Create a fig from data and layout, and plot the fig   5# Create a fig from data and layout, and plot the fig5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        _a�     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        _a�     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        _a�     �                   �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        _a̗     �                   x = random_x       y = random_y5�_�                           ����                                                                                                                                                                                                                                                                                                                                       !          v        _a̟     �                   �                    name = ''5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                  v        _a̶     �              5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                       !          v        _a̷     �             �                   name = ''5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                       !          v        _a̹     �                    name = 'markers'5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                       #          v        _a̿     �                layout = go.layout(   )�         !          �         "      	    x = l5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                       $          v        _a��     �         "      %    title = 'Random Data Scatterplot'   /    xaxis = dict(title = 'Normal distribution')5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                       %          v        _a�P     �         #          �          $      0    yaxis = dict(title = 'Unifrom distribution')5�_�                             ����                                                                                                                                                                                                                                                                                                                                       &          v        _a�b     �          $          �      !   %          hovermode = 'closest'5�_�                       %    ����                                                                                                                                                                                                                                                                                                                                       &          v        _a�q     �         %      &    title = 'Random Data Scatterplot',5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                       &          v        _a�s     �         %      0    xaxis = dict(title = 'Normal distribution'),5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                       &          v        _a�u     �          %      1    yaxis = dict(title = 'Unifrom distribution'),5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                       %          v        _a�x     �   "   $        5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                       $          v        _a�x     �   "   $        5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                       $          v        _a�y     �   #   $           �   #   %              fig =5�_�                    %       ����                                                                                                                                                                                                                                                                                                                                       $          v        _a�~     �   %   &           5�_�                    &        ����                                                                                                                                                                                                                                                                                                                                       $          v        _à     �   &   '           �   &   (                   5�_�                    %       ����                                                                                                                                                                                                                                                                                                                                       '           v        _a̓    �   $   &   )      -fig = go.Figure(data = data, layout = layout)   #pyo.plot(fig, filename='test.html')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _a��     �         *          x = random_x,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _a��    �         *          y = random_y,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _a�4    �         *      layout = go.Layout(5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _aΡ    �          *      1    yaxis = dict(title = 'Uniform distribution'),5�_�                    &       ����                                                                                                                                                                                                                                                                                                                                                             _a�b    �   %   '   *      'pyo.plot(fig, filename='solution.html')5�_�                    *        ����                                                                                                                                                                                                                                                                                                                                                             _a�w     �   )   +        5�_�                    )        ����                                                                                                                                                                                                                                                                                                                                                             _a�x     �   (   *        5�_�                     (        ����                                                                                                                                                                                                                                                                                                                                                             _a�x     �   '   )        5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 v        _a�     �                 5# Create a fig from data and layout, and plot the fig�              �                 #######   =# Objective: Create a scatterplot of 1000 random data points.   <# x-axis values should come from a normal distribution using   # np.random.randn(1000)   H# y-axis values should come from a uniform distribution over [0,1) using   # np.random.rand(1000)   ######       # Perform imports here:       import plotly.offline as pyo   import plotly.graph_objs as go   import numpy as np       # Define a data variable        random_x = np.random.randn(1000)   random_y = np.random.rand(1000)       data = [go.Scatter(       )]       # Define the layout                       5# Create a fig from data and layout, and plot the fig   5# Create a fig from data and layout, and plot the fig5��