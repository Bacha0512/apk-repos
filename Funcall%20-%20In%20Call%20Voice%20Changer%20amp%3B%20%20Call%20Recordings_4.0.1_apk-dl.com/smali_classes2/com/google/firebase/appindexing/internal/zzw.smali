.class public final Lcom/google/firebase/appindexing/internal/zzw;
.super Ljava/lang/Object;


# direct methods
.method public static zzgo(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x3

    const-string v0, "FirebaseAppIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "FirebaseAppIndex"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const-string v0, "FirebaseAppIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
