.class Lcom/rami_bar/fun_call/voip/VoipManager$1$1;
.super Ljava/lang/Object;
.source "VoipManager.java"

# interfaces
.implements Lorg/abtollc/sdk/OnRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/voip/VoipManager$1;->onInitializeState(Lorg/abtollc/sdk/OnInitializeListener$InitializeState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/voip/VoipManager$1;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/voip/VoipManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/voip/VoipManager$1;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1$1;->this$1:Lcom/rami_bar/fun_call/voip/VoipManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(J)V
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 107
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone Registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "VoipManager"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Voip SDK"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "ABTO"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 109
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1$1;->this$1:Lcom/rami_bar/fun_call/voip/VoipManager$1;

    iget-object v0, v0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    const-string v1, "voipsipsdk"

    # setter for: Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$202(Lcom/rami_bar/fun_call/voip/VoipManager;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 111
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1$1;->this$1:Lcom/rami_bar/fun_call/voip/VoipManager$1;

    iget-object v0, v0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$300(Lcom/rami_bar/fun_call/voip/VoipManager;)Lorg/abtollc/sdk/AbtoPhone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/abtollc/sdk/AbtoPhone;->setRegistrationStateListener(Lorg/abtollc/sdk/OnRegistrationListener;)V

    .line 112
    return-void
.end method

.method public onRegistrationFailed(JILjava/lang/String;)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "i"    # I
    .param p4, "s"    # Ljava/lang/String;

    .prologue
    .line 121
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone Registration Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1$1;->this$1:Lcom/rami_bar/fun_call/voip/VoipManager$1;

    iget-object v0, v0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # invokes: Lcom/rami_bar/fun_call/voip/VoipManager;->initSDKs()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$100(Lcom/rami_bar/fun_call/voip/VoipManager;)V

    .line 123
    return-void
.end method

.method public onUnRegistered(J)V
    .locals 2
    .param p1, "l"    # J

    .prologue
    .line 116
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone onUnRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
