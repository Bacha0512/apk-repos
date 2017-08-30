.class Lcom/digits/sdk/android/bh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/bg;


# instance fields
.field final a:Lcom/digits/sdk/android/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/bh;-><init>(Lcom/digits/sdk/android/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/digits/sdk/android/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/bh;->a:Lcom/digits/sdk/android/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Landroid/os/ResultReceiver;Ljava/lang/Exception;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_error"

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "digits_event_details_builder"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x190

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
