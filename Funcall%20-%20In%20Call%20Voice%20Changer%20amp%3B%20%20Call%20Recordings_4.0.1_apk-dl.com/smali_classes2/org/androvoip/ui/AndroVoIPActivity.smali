.class public Lorg/androvoip/ui/AndroVoIPActivity;
.super Landroid/app/Activity;
.source "AndroVoIPActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lorg/androvoip/ui/AndroVoIPActivity;->serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dialNumber(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    sget v2, Lorg/androvoip/R$id;->dialer_number:I

    invoke-virtual {p0, v2}, Lorg/androvoip/ui/AndroVoIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "num":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/androvoip/ui/AndroVoIPActivity;->serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    invoke-interface {v2, v1}, Lorg/androvoip/iax2/IAX2ServiceAPI;->dial(Ljava/lang/String;)Z

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/androvoip/ui/DialerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/androvoip/ui/AndroVoIPActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lorg/androvoip/R$layout;->main:I

    invoke-virtual {p0, v0}, Lorg/androvoip/ui/AndroVoIPActivity;->setContentView(I)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.androvoip"

    const-string v2, "org.androvoip.iax2.IAX2Service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lorg/androvoip/ui/AndroVoIPActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 55
    sget-object v0, Lorg/androvoip/ui/AndroVoIPActivity;->serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p0}, Lorg/androvoip/ui/AndroVoIPActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lorg/androvoip/ui/AndroVoIPActivity;->serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    .line 60
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 64
    invoke-static {p2}, Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;->asInterface(Landroid/os/IBinder;)Lorg/androvoip/iax2/IAX2ServiceAPI;

    move-result-object v0

    sput-object v0, Lorg/androvoip/ui/AndroVoIPActivity;->serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    .line 65
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lorg/androvoip/ui/AndroVoIPActivity;->serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    .line 70
    return-void
.end method
