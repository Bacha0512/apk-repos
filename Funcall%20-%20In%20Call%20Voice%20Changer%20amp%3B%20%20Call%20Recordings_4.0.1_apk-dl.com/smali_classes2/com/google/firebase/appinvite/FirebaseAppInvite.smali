.class public abstract Lcom/google/firebase/appinvite/FirebaseAppInvite;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInvitation(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/google/firebase/appinvite/FirebaseAppInvite;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzJJ()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.google.firebase.appinvite.fdl.extension.InvitationId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/io;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/io;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract getInvitationId()Ljava/lang/String;
.end method
