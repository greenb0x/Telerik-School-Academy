﻿#pragma checksum "..\..\CrowdChatWindow.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "F0A9090CAC1D673B9A540699D6271297"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18449
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using CrowdChat.WPF;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace CrowdChat.WPF {
    
    
    /// <summary>
    /// CrowdChatWindow
    /// </summary>
    public partial class CrowdChatWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 27 "..\..\CrowdChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox postContent;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\CrowdChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox allPostsTextBox;
        
        #line default
        #line hidden
        
        
        #line 74 "..\..\CrowdChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button showPostsFromCurrentSessionButton;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/CrowdChat.WPF;component/crowdchatwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\CrowdChatWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 12 "..\..\CrowdChatWindow.xaml"
            ((CrowdChat.WPF.CrowdChatWindow)(target)).Loaded += new System.Windows.RoutedEventHandler(this.OnWindowFormLoaded);
            
            #line default
            #line hidden
            return;
            case 2:
            
            #line 23 "..\..\CrowdChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.OnPostButtonClick);
            
            #line default
            #line hidden
            return;
            case 3:
            this.postContent = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.allPostsTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            
            #line 56 "..\..\CrowdChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.OnGitHubButtonClick);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 71 "..\..\CrowdChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.OnShowAllPostsButtonClick);
            
            #line default
            #line hidden
            return;
            case 7:
            this.showPostsFromCurrentSessionButton = ((System.Windows.Controls.Button)(target));
            
            #line 80 "..\..\CrowdChatWindow.xaml"
            this.showPostsFromCurrentSessionButton.Click += new System.Windows.RoutedEventHandler(this.OnShowAllPostsFromCurrentSessionButtonClick);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

