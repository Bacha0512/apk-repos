.class public Lorg/abtollc/service/HeadsetButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetButtonReceiver.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "HeadsetButtonReceiver"

.field private static uaReceiver:Lorg/abtollc/voip/UAStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/service/HeadsetButtonReceiver;->uaReceiver:Lorg/abtollc/voip/UAStateReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setService(Lorg/abtollc/voip/UAStateReceiver;)V
    .locals 0
    .param p0, "aUAReceiver"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 56
    sput-object p0, Lorg/abtollc/service/HeadsetButtonReceiver;->uaReceiver:Lorg/abtollc/voip/UAStateReceiver;

    .line 57
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string v1, "HeadsetButtonReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v1, Lorg/abtollc/service/HeadsetButtonReceiver;->uaReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 29
    .local v0, "event":Landroid/view/KeyEvent;
    const-string v1, "HeadsetButtonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_0

    .line 34
    sget-object v1, Lorg/abtollc/service/HeadsetButtonReceiver;->uaReceiver:Lorg/abtollc/voip/UAStateReceiver;

    invoke-virtual {v1}, Lorg/abtollc/voip/UAStateReceiver;->handleHeadsetButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lorg/abtollc/service/HeadsetButtonReceiver;->abortBroadcast()V

    goto :goto_0
.end method
