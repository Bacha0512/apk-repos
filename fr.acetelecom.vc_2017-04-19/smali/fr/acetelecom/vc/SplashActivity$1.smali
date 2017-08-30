.class Lfr/acetelecom/vc/SplashActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/appinvite/AppInviteInvitationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/SplashActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/SplashActivity$1;->a:Lfr/acetelecom/vc/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appinvite/AppInviteInvitationResult;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/appinvite/AppInviteInvitationResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/appinvite/AppInviteInvitationResult;->getInvitationIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/appinvite/AppInviteReferral;->getDeepLink(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInvitation:  deep link found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lfr/acetelecom/vc/SplashActivity$1;->a:Lfr/acetelecom/vc/SplashActivity;

    iget-object v1, v1, Lfr/acetelecom/vc/SplashActivity;->b:Lfr/acetelecom/vc/b;

    const-string v2, "deepLink"

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "DeepLinkSuccess"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "deepLink"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity$1;->a:Lfr/acetelecom/vc/SplashActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "SplashVC"

    const-string v1, "getInvitation: no deep link found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity$1;->a:Lfr/acetelecom/vc/SplashActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/SplashActivity;->b:Lfr/acetelecom/vc/b;

    const-string v1, "deepLink"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/appinvite/AppInviteInvitationResult;

    invoke-virtual {p0, p1}, Lfr/acetelecom/vc/SplashActivity$1;->a(Lcom/google/android/gms/appinvite/AppInviteInvitationResult;)V

    return-void
.end method
