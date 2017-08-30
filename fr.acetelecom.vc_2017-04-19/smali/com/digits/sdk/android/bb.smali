.class Lcom/digits/sdk/android/bb;
.super Lcom/digits/sdk/android/ag;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Lcom/digits/sdk/android/internal/StateButton;

.field c:Landroid/widget/TextView;

.field d:Lcom/digits/sdk/android/an;

.field e:Landroid/app/Activity;

.field f:Lcom/digits/sdk/android/ar;

.field g:Landroid/widget/TextView;

.field h:Lcom/digits/sdk/android/internal/g;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/ag;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/bb;->f:Lcom/digits/sdk/android/ar;

    return-void
.end method

.method private b(Landroid/os/Bundle;)Lcom/digits/sdk/android/an;
    .locals 7

    new-instance v0, Lcom/digits/sdk/android/bc;

    iget-object v1, p0, Lcom/digits/sdk/android/bb;->b:Lcom/digits/sdk/android/internal/StateButton;

    iget-object v2, p0, Lcom/digits/sdk/android/bb;->a:Landroid/widget/EditText;

    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    const-string v4, "phone_number"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/digits/sdk/android/bb;->f:Lcom/digits/sdk/android/ar;

    iget-object v6, p0, Lcom/digits/sdk/android/bb;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-direct/range {v0 .. v6}, Lcom/digits/sdk/android/bc;-><init>(Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Landroid/os/ResultReceiver;Ljava/lang/String;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/digits/sdk/android/bb;->e:Landroid/app/Activity;

    const-string v0, "digits_event_details_builder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iput-object v0, p0, Lcom/digits/sdk/android/bb;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__titleText:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digits/sdk/android/bb;->g:Landroid/widget/TextView;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__confirmationEditText:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/digits/sdk/android/bb;->a:Landroid/widget/EditText;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__createAccount:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/StateButton;

    iput-object v0, p0, Lcom/digits/sdk/android/bb;->b:Lcom/digits/sdk/android/internal/StateButton;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__termsTextCreateAccount:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digits/sdk/android/bb;->c:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/digits/sdk/android/bb;->b(Landroid/os/Bundle;)Lcom/digits/sdk/android/an;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bb;->d:Lcom/digits/sdk/android/an;

    new-instance v0, Lcom/digits/sdk/android/internal/g;

    invoke-direct {v0, p1}, Lcom/digits/sdk/android/internal/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/digits/sdk/android/bb;->h:Lcom/digits/sdk/android/internal/g;

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->a:Landroid/widget/EditText;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__email_request_edit_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->g:Landroid/widget/TextView;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__email_request_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->d:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/bb;->a:Landroid/widget/EditText;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bb;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->d:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/bb;->b:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bb;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->d:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/bb;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bb;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->a:Landroid/widget/EditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setInputType(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->h:Lcom/digits/sdk/android/internal/g;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__terms_email_request:I

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/g;->a(I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2, p3}, Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V
    .locals 3

    sget v0, Lcom/digits/sdk/android/cb$g;->dgts__continue:I

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__sending:I

    sget v2, Lcom/digits/sdk/android/cb$g;->dgts__done:I

    invoke-virtual {p3, v0, v1, v2}, Lcom/digits/sdk/android/internal/StateButton;->a(III)V

    invoke-virtual {p3}, Lcom/digits/sdk/android/internal/StateButton;->g()V

    invoke-super {p0, p1, p2, p3}, Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "receiver"

    aput-object v3, v0, v2

    const-string v3, "phone_number"

    aput-object v3, v0, v1

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

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->f:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bb;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->q(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bb;->d:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->b()V

    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Lcom/digits/sdk/android/cb$f;->dgts__activity_email:I

    return v0
.end method
