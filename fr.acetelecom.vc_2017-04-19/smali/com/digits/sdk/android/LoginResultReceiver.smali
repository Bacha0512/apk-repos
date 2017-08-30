.class Lcom/digits/sdk/android/LoginResultReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field final a:Lcom/digits/sdk/android/cj;

.field final b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/digits/sdk/android/ar;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/cj;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/cj;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/ar;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/digits/sdk/android/LoginResultReceiver;->a:Lcom/digits/sdk/android/cj;

    iput-object p2, p0, Lcom/digits/sdk/android/LoginResultReceiver;->b:Lcom/twitter/sdk/android/core/k;

    iput-object p3, p0, Lcom/digits/sdk/android/LoginResultReceiver;->c:Lcom/digits/sdk/android/ar;

    return-void
.end method

.method constructor <init>(Lcom/digits/sdk/android/g;Lcom/twitter/sdk/android/core/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/g;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/cj;

    invoke-direct {v0, p1}, Lcom/digits/sdk/android/cj;-><init>(Lcom/digits/sdk/android/g;)V

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/digits/sdk/android/LoginResultReceiver;-><init>(Lcom/digits/sdk/android/cj;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "digits_event_details_builder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iget-object v1, p0, Lcom/digits/sdk/android/LoginResultReceiver;->a:Lcom/digits/sdk/android/cj;

    if-eqz v1, :cond_1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/LoginResultReceiver;->c:Lcom/digits/sdk/android/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/ar;->b(Lcom/digits/sdk/android/a/f;)V

    :cond_0
    iget-object v1, p0, Lcom/digits/sdk/android/LoginResultReceiver;->a:Lcom/digits/sdk/android/cj;

    iget-object v0, p0, Lcom/digits/sdk/android/LoginResultReceiver;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/aw;

    const-string v2, "phone_number"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/digits/sdk/android/cj;->a(Lcom/digits/sdk/android/aw;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x190

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/digits/sdk/android/LoginResultReceiver;->c:Lcom/digits/sdk/android/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/ar;->c(Lcom/digits/sdk/android/a/f;)V

    :cond_3
    iget-object v0, p0, Lcom/digits/sdk/android/LoginResultReceiver;->a:Lcom/digits/sdk/android/cj;

    new-instance v1, Lcom/digits/sdk/android/at;

    const-string v2, "login_error"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/digits/sdk/android/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/cj;->a(Lcom/digits/sdk/android/at;)V

    goto :goto_0
.end method
