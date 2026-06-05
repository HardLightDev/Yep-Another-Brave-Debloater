# ==============================================================================
# PROJECT: YABD (Yep Another Brave Debloater) - UNIVERSAL DEPLOYER
# ==============================================================================

Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms

# Código RAW del Registro Unificado con el Debloat Ampliado Estilo "Origin"
$RegistryCode = @"
Windows Registry Editor Version 5.00

; --- 1. POLÍTICAS GLOBALES DEL SISTEMA (HKEY_LOCAL_MACHINE) ---

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\BraveSoftware\Brave]
"MetricsReportingEnabled"=dword:00000000
"SafeBrowsingExtendedReportingEnabled"=dword:00000000
"UrlKeyedAnonymizedDataCollectionEnabled"=dword:00000000
"BraveP3AEnabled"=dword:00000000
"BraveStatsPingEnabled"=dword:00000000
"BraveRewardsDisabled"=dword:00000001
"BraveWalletDisabled"=dword:00000001
"BraveVPNDisabled"=dword:00000001
"BraveAIChatEnabled"=dword:00000000
"BraveNewsDisabled"=dword:00000001
"BraveTalkDisabled"=dword:00000001
"BravePlaylistEnabled"=dword:00000000
"BraveWebDiscoveryEnabled"=dword:00000000
"BraveSpeedreaderEnabled"=dword:00000000
"BraveWaybackMachineEnabled"=dword:00000000
"TorDisabled"=dword:00000001
"BackgroundModeEnabled"=dword:00000000
"ShoppingListEnabled"=dword:00000000
"DefaultBrowserSettingEnabled"=dword:00000000
"AutofillCreditCardEnabled"=dword:00000000
"BlockThirdPartyCookies"=dword:00000001
"WebRtcIPHandling"="default_public_interface_only"
"NativeWindowOcclusionEnabled"=dword:00000000
"WindowOcclusionEnabled"=dword:00000000
"IpfsDisabled"=dword:00000001
"BraveReviewPromptEnabled"=dword:00000000
"SafeBrowsingProtectionLevel"=dword:00000001

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\BraveSoftware\Brave-Beta]
"MetricsReportingEnabled"=dword:00000000
"SafeBrowsingExtendedReportingEnabled"=dword:00000000
"UrlKeyedAnonymizedDataCollectionEnabled"=dword:00000000
"BraveP3AEnabled"=dword:00000000
"BraveStatsPingEnabled"=dword:00000000
"BraveRewardsDisabled"=dword:00000001
"BraveWalletDisabled"=dword:00000001
"BraveVPNDisabled"=dword:00000001
"BraveAIChatEnabled"=dword:00000000
"BraveNewsDisabled"=dword:00000001
"BraveTalkDisabled"=dword:00000001
"BravePlaylistEnabled"=dword:00000000
"BraveWebDiscoveryEnabled"=dword:00000000
"BraveSpeedreaderEnabled"=dword:00000000
"BraveWaybackMachineEnabled"=dword:00000000
"TorDisabled"=dword:00000001
"BackgroundModeEnabled"=dword:00000000
"ShoppingListEnabled"=dword:00000000
"DefaultBrowserSettingEnabled"=dword:00000000
"AutofillCreditCardEnabled"=dword:00000000
"BlockThirdPartyCookies"=dword:00000001
"WebRtcIPHandling"="default_public_interface_only"
"NativeWindowOcclusionEnabled"=dword:00000000
"WindowOcclusionEnabled"=dword:00000000
"IpfsDisabled"=dword:00000001
"BraveReviewPromptEnabled"=dword:00000000
"SafeBrowsingProtectionLevel"=dword:00000001

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\BraveSoftware\Brave-Nightly]
"MetricsReportingEnabled"=dword:00000000
"SafeBrowsingExtendedReportingEnabled"=dword:00000000
"UrlKeyedAnonymizedDataCollectionEnabled"=dword:00000000
"BraveP3AEnabled"=dword:00000000
"BraveStatsPingEnabled"=dword:00000000
"BraveRewardsDisabled"=dword:00000001
"BraveWalletDisabled"=dword:00000001
"BraveVPNDisabled"=dword:00000001
"BraveAIChatEnabled"=dword:00000000
"BraveNewsDisabled"=dword:00000001
"BraveTalkDisabled"=dword:00000001
"BravePlaylistEnabled"=dword:00000000
"BraveWebDiscoveryEnabled"=dword:00000000
"BraveSpeedreaderEnabled"=dword:00000000
"BraveWaybackMachineEnabled"=dword:00000000
"TorDisabled"=dword:00000001
"BackgroundModeEnabled"=dword:00000000
"ShoppingListEnabled"=dword:00000000
"DefaultBrowserSettingEnabled"=dword:00000000
"AutofillCreditCardEnabled"=dword:00000000
"BlockThirdPartyCookies"=dword:00000001
"WebRtcIPHandling"="default_public_interface_only"
"NativeWindowOcclusionEnabled"=dword:00000000
"WindowOcclusionEnabled"=dword:00000000
"IpfsDisabled"=dword:00000001
"BraveReviewPromptEnabled"=dword:00000000
"SafeBrowsingProtectionLevel"=dword:00000001

; --- 2. POLÍTICAS A NIVEL DE USUARIO (HKEY_CURRENT_USER) ---

[HKEY_CURRENT_USER\SOFTWARE\Policies\BraveSoftware\Brave]
"MetricsReportingEnabled"=dword:00000000
"SafeBrowsingExtendedReportingEnabled"=dword:00000000
"UrlKeyedAnonymizedDataCollectionEnabled"=dword:00000000
"BraveP3AEnabled"=dword:00000000
"BraveStatsPingEnabled"=dword:00000000
"BraveRewardsDisabled"=dword:00000001
"BraveWalletDisabled"=dword:00000001
"BraveVPNDisabled"=dword:00000001
"BraveAIChatEnabled"=dword:00000000
"BraveNewsDisabled"=dword:00000001
"BraveTalkDisabled"=dword:00000001
"BravePlaylistEnabled"=dword:00000000
"BraveWebDiscoveryEnabled"=dword:00000000
"BraveSpeedreaderEnabled"=dword:00000000
"BraveWaybackMachineEnabled"=dword:00000000
"TorDisabled"=dword:00000001
"BackgroundModeEnabled"=dword:00000000
"ShoppingListEnabled"=dword:00000000
"DefaultBrowserSettingEnabled"=dword:00000000
"AutofillCreditCardEnabled"=dword:00000000
"BlockThirdPartyCookies"=dword:00000001
"WebRtcIPHandling"="default_public_interface_only"
"PromotionalTabsEnabled"=dword:00000000
"PaymentMethodQueryEnabled"=dword:00000000
"SpellcheckEnabled"=dword:00000001
"PrintingEnabled"=dword:00000001
"DeveloperToolsAvailability"=dword:00000000
"IncognitoModeAvailability"=dword:00000000
"SavingBrowserHistoryDisabled"=dword:00000000
"SafeBrowsingSurveysEnabled"=dword:00000000

[HKEY_CURRENT_USER\SOFTWARE\Policies\BraveSoftware\Brave-Beta]
"MetricsReportingEnabled"=dword:00000000
"SafeBrowsingExtendedReportingEnabled"=dword:00000000
"UrlKeyedAnonymizedDataCollectionEnabled"=dword:00000000
"BraveP3AEnabled"=dword:00000000
"BraveStatsPingEnabled"=dword:00000000
"BraveRewardsDisabled"=dword:00000001
"BraveWalletDisabled"=dword:00000001
"BraveVPNDisabled"=dword:00000001
"BraveAIChatEnabled"=dword:00000000
"BraveNewsDisabled"=dword:00000001
"BraveTalkDisabled"=dword:00000001
"BravePlaylistEnabled"=dword:00000000
"BraveWebDiscoveryEnabled"=dword:00000000
"BraveSpeedreaderEnabled"=dword:00000000
"BraveWaybackMachineEnabled"=dword:00000000
"TorDisabled"=dword:00000001
"BackgroundModeEnabled"=dword:00000000
"ShoppingListEnabled"=dword:00000000
"DefaultBrowserSettingEnabled"=dword:00000000
"AutofillCreditCardEnabled"=dword:00000000
"BlockThirdPartyCookies"=dword:00000001
"WebRtcIPHandling"="default_public_interface_only"
"PromotionalTabsEnabled"=dword:00000000
"PaymentMethodQueryEnabled"=dword:00000000
"SpellcheckEnabled"=dword:00000001
"PrintingEnabled"=dword:00000001
"DeveloperToolsAvailability"=dword:00000000
"IncognitoModeAvailability"=dword:00000000
"SavingBrowserHistoryDisabled"=dword:00000000
"SafeBrowsingSurveysEnabled"=dword:00000000

[HKEY_CURRENT_USER\SOFTWARE\Policies\BraveSoftware\Brave-Nightly]
"MetricsReportingEnabled"=dword:00000000
"SafeBrowsingExtendedReportingEnabled"=dword:00000000
"UrlKeyedAnonymizedDataCollectionEnabled"=dword:00000000
"BraveP3AEnabled"=dword:00000000
"BraveStatsPingEnabled"=dword:00000000
"BraveRewardsDisabled"=dword:00000001
"BraveWalletDisabled"=dword:00000001
"BraveVPNDisabled"=dword:00000001
"BraveAIChatEnabled"=dword:00000000
"BraveNewsDisabled"=dword:00000001
"BraveTalkDisabled"=dword:00000001
"BravePlaylistEnabled"=dword:00000000
"BraveWebDiscoveryEnabled"=dword:00000000
"BraveSpeedreaderEnabled"=dword:00000000
"BraveWaybackMachineEnabled"=dword:00000000
"TorDisabled"=dword:00000001
"BackgroundModeEnabled"=dword:00000000
"ShoppingListEnabled"=dword:00000000
"DefaultBrowserSettingEnabled"=dword:00000000
"AutofillCreditCardEnabled"=dword:00000000
"BlockThirdPartyCookies"=dword:00000001
"WebRtcIPHandling"="default_public_interface_only"
"PromotionalTabsEnabled"=dword:00000000
"PaymentMethodQueryEnabled"=dword:00000000
"SpellcheckEnabled"=dword:00000001
"PrintingEnabled"=dword:00000001
"DeveloperToolsAvailability"=dword:00000000
"IncognitoModeAvailability"=dword:00000000
"SavingBrowserHistoryDisabled"=dword:00000000
"SafeBrowsingSurveysEnabled"=dword:00000000
"@

# Interfaz Gráfica Avanzada (XAML Premium)
[xml]$XAML = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2000/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2000/xaml"
        Title="YABD - Universal Deployer" Height="360" Width="490" 
        Background="#121214" WindowStartupLocation="CenterScreen" ResizeMode="NoResize" WindowStyle="None" AllowsTransparency="True">
    <Border BorderBrush="#27272A" BorderThickness="1" CornerRadius="12" Background="#16161A">
        <Grid Margin="20">
            <Grid.RowDefinitions>
                <RowDefinition Height="Auto"/>
                <RowDefinition Height="*"/>
                <RowDefinition Height="Auto"/>
            </Grid.RowDefinitions>

            <StackPanel Grid.Row="0" Margin="0,0,0,15">
                <TextBlock Text="Yep Another Brave Debloater (YABD)" FontSize="18" FontWeight="Bold" Foreground="#DEE2E6" HorizontalAlignment="Center" LetterSpacing="0.5"/>
                <TextBlock Text="Brave Origin experience, without the $60 tax." FontSize="11" Foreground="#71717A" HorizontalAlignment="Center" Margin="0,4,0,0"/>
                <Separator Background="#27272A" Margin="0,12,0,0"/>
            </StackPanel>

            <Border Grid.Row="1" Background="#09090B" CornerRadius="6" BorderBrush="#27272A" BorderThickness="1" Padding="10">
                <ScrollViewer VerticalScrollBarVisibility="Hidden" Name="Scroller">
                    <TextBlock Name="LogConsole" Text="[i] YABD listo. Esperando inyección quirúrgica...`n" FontFamily="Consolas" FontSize="11" Foreground="#A1A1AA" TextWrapping="Wrap"/>
                </ScrollViewer>
            </Border>

            <StackPanel Grid.Row="2" Orientation="Horizontal" HorizontalAlignment="Right" Margin="0,15,0,0">
                <Button Name="BtnExit" Content="Salir" Width="80" Height="32" Background="Transparent" Foreground="#71717A" BorderBrush="#27272A" BorderThickness="1" Cursor="Hand" Margin="0,0,10,0">
                    <Button.Resources>
                        <Style TargetType="Border"><Setter Property="CornerRadius" Value="6"/></Style>
                    </Button.Resources>
                </Button>
                <Button Name="BtnInject" Content="Inyectar Pureza" Width="150" Height="32" Background="#2563EB" Foreground="White" FontWeight="SemiBold" BorderThickness="0" Cursor="Hand">
                    <Button.Resources>
                        <Style TargetType="Border"><Setter Property="CornerRadius" Value="6"/></Style>
                    </Button.Resources>
                </Button>
            </StackPanel>
        </Grid>
    </Border>
</Window>
"@

$Reader = (New-Object System.Xml.XmlNodeReader $XAML)
$Form = [Windows.Markup.XamlReader]::Load($Reader)

$LogConsole = $Form.FindName("LogConsole")
$BtnInject  = $Form.FindName("BtnInject")
$BtnExit    = $Form.FindName("BtnExit")
$Scroller   = $Form.FindName("Scroller")

function Update-Log ($Message) {
    $LogConsole.Text += "$Message`n"
    $Scroller.ScrollToEnd()
    [System.Windows.Forms.Application]::DoEvents()
    Start-Sleep -Milliseconds 200
}

$BtnInject.Add_Click({
    $BtnInject.IsEnabled = $false
    $BtnInject.Content = "Debloating..."
    $BtnInject.Background = "#1D4ED8"

    Update-Log "[-] Rompiendo procesos activos de Brave para evitar locks..."
    Stop-Process -Name "brave" -Force -ErrorAction SilentlyContinue

    Update-Log "[-] Creando payload volátil de directivas..."
    $TempRegFile = "$env:TEMP\yabd_payload.reg"
    $RegistryCode | Out-File -FilePath $TempRegFile -Encoding utf8

    Update-Log "[-] Inyectando árboles de registro para Estable, Beta y Nightly..."
    try {
        $process = Start-Process -FilePath "reg.exe" -ArgumentList "import `"$TempRegFile`"" -WindowStyle Hidden -PassThru -Wait
        if ($process.ExitCode -eq 0) {
            Update-Log "[✓] Telemetría P3A y encuestas nativas: Removidas."
            Update-Log "[✓] IPFS Node Daemon (Bloat de red): Desactivado."
            Update-Log "[✓] Promociones de pestañas y Widgets comerciales: Purgados."
            Update-Log "[✓] Respetando optimizaciones del usuario (Pre-load web intacto)."
            Update-Log "`n[✓] HECHO: Tu Brave ahora es puramente un navegador."
            $BtnInject.Content = "Yep. Hecho"
            $BtnInject.Background = "#059669"
        } else { throw "Error" }
    } catch {
        Update-Log "`n[!] ERROR: YABD requiere privilegios de Administrador."
        $BtnInject.Content = "Reintentar"
        $BtnInject.IsEnabled = $true
        $BtnInject.Background = "#DC2626"
    }

    if (Test-Path $TempRegFile) { Remove-Item $TempRegFile -Force }
})

$BtnExit.Add_Click({ $Form.Close() })
$Form.Add_MouseLeftButtonDown({ $Form.DragMove() })
$Form.ShowDialog() | Out-Null
