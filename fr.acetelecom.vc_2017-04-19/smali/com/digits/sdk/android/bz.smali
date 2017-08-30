.class Lcom/digits/sdk/android/bz;
.super Lcom/digits/sdk/android/ag;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Lcom/digits/sdk/android/internal/StateButton;

.field c:Landroid/widget/TextView;

.field d:Lcom/digits/sdk/android/an;

.field private final e:Lcom/digits/sdk/android/ar;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/ag;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/bz;->e:Lcom/digits/sdk/android/ar;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "digits_event_details_builder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iput-object v0, p0, Lcom/digits/sdk/android/bz;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__confirmationEditText:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/digits/sdk/android/bz;->a:Landroid/widget/EditText;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__createAccount:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/StateButton;

    iput-object v0, p0, Lcom/digits/sdk/android/bz;->b:Lcom/digits/sdk/android/internal/StateButton;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__termsTextCreateAccount:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digits/sdk/android/bz;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/digits/sdk/android/bz;->b(Landroid/os/Bundle;)Lcom/digits/sdk/android/an;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bz;->d:Lcom/digits/sdk/android/an;

    iget-object v0, p0, Lcom/digits/sdk/android/bz;->d:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/bz;->a:Landroid/widget/EditText;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bz;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bz;->d:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/bz;->b:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bz;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bz;->d:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/bz;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bz;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bz;->a:Landroid/widget/EditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "receiver"

    aput-object v3, v0, v2

    const-string v3, "phone_number"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "request_id"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "user_id"

    aput-object v4, v0, v3

    invoke-static {p1, v0}, Lcom/digits/sdk/android/k;->a(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "digits_event_details_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iget-object v3, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method b(Landroid/os/Bundle;)Lcom/digits/sdk/android/an;
    .locals 12

    new-instance v1, Lcom/digits/sdk/android/ca;

    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iget-object v3, p0, Lcom/digits/sdk/android/bz;->b:Lcom/digits/sdk/android/internal/StateButton;

    iget-object v4, p0, Lcom/digits/sdk/android/bz;->a:Landroid/widget/EditText;

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "phone_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/digits/sdk/android/bz;->e:Lcom/digits/sdk/android/ar;

    const-string v0, "email_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, p0, Lcom/digits/sdk/android/bz;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-direct/range {v1 .. v11}, Lcom/digits/sdk/android/ca;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-object v1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bz;->e:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bz;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->n(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bz;->d:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->b()V

    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Lcom/digits/sdk/android/cb$f;->dgts__activity_pin_code:I

    return v0
.end method
