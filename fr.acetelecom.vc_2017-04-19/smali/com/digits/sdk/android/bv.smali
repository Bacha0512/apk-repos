.class Lcom/digits/sdk/android/bv;
.super Lcom/digits/sdk/android/ag;

# interfaces
.implements Lcom/digits/sdk/android/internal/h;


# instance fields
.field a:Lcom/digits/sdk/android/CountryListSpinner;

.field b:Lcom/digits/sdk/android/internal/StateButton;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/TextView;

.field e:Lcom/digits/sdk/android/bw;

.field f:Lcom/digits/sdk/android/internal/g;

.field private final g:Lcom/digits/sdk/android/ar;

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/digits/sdk/android/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/ag;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/bv;->g:Lcom/digits/sdk/android/ar;

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/bv;)Lcom/digits/sdk/android/ar;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->g:Lcom/digits/sdk/android/ar;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/digits/sdk/android/bv;->f:Lcom/digits/sdk/android/internal/g;

    invoke-virtual {v1, p1}, Lcom/digits/sdk/android/internal/g;->a(I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/digits/sdk/android/bv;->h:Landroid/app/Activity;

    const-string v0, "digits_event_details_builder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iput-object v0, p0, Lcom/digits/sdk/android/bv;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__countryCode:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/CountryListSpinner;

    iput-object v0, p0, Lcom/digits/sdk/android/bv;->a:Lcom/digits/sdk/android/CountryListSpinner;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__sendCodeButton:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/StateButton;

    iput-object v0, p0, Lcom/digits/sdk/android/bv;->b:Lcom/digits/sdk/android/internal/StateButton;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__phoneNumberEditText:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/digits/sdk/android/bv;->c:Landroid/widget/EditText;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__termsText:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digits/sdk/android/bv;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/digits/sdk/android/bv;->b(Landroid/os/Bundle;)Lcom/digits/sdk/android/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    new-instance v0, Lcom/digits/sdk/android/internal/g;

    invoke-direct {v0, p1}, Lcom/digits/sdk/android/internal/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/digits/sdk/android/bv;->f:Lcom/digits/sdk/android/internal/g;

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    iget-object v1, p0, Lcom/digits/sdk/android/bv;->c:Landroid/widget/EditText;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bv;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    iget-object v1, p0, Lcom/digits/sdk/android/bv;->b:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bv;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    iget-object v1, p0, Lcom/digits/sdk/android/bv;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/bv;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->a:Lcom/digits/sdk/android/CountryListSpinner;

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/bv;->a(Lcom/digits/sdk/android/CountryListSpinner;)V

    invoke-static {p1}, Lcom/digits/sdk/android/cf;->a(Landroid/content/Context;)Lcom/digits/sdk/android/cf;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/digits/sdk/android/bv;->a(Lcom/digits/sdk/android/cf;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->c:Landroid/widget/EditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->f:Lcom/digits/sdk/android/internal/g;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__terms_text:I

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/g;->a(I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2, p3}, Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V

    return-void
.end method

.method protected a(Lcom/digits/sdk/android/CountryListSpinner;)V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/bv$1;

    invoke-direct {v0, p0}, Lcom/digits/sdk/android/bv$1;-><init>(Lcom/digits/sdk/android/bv;)V

    invoke-virtual {p1, v0}, Lcom/digits/sdk/android/CountryListSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/cf;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "phone_number"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/digits/sdk/android/by;->a(Ljava/lang/String;Lcom/digits/sdk/android/cf;)Lcom/digits/sdk/android/models/h;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/bw;->a(Lcom/digits/sdk/android/models/h;)V

    iget-object v1, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/bw;->b(Lcom/digits/sdk/android/models/h;)V

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/digits/sdk/android/by;->a(Ljava/lang/String;Lcom/digits/sdk/android/cf;)Lcom/digits/sdk/android/models/h;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "receiver"

    aput-object v3, v0, v2

    const-string v3, "digits_event_details_builder"

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

    iget-object v3, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

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

.method b(Landroid/os/Bundle;)Lcom/digits/sdk/android/bw;
    .locals 9

    new-instance v0, Lcom/digits/sdk/android/bw;

    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iget-object v2, p0, Lcom/digits/sdk/android/bv;->b:Lcom/digits/sdk/android/internal/StateButton;

    iget-object v3, p0, Lcom/digits/sdk/android/bv;->c:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/digits/sdk/android/bv;->a:Lcom/digits/sdk/android/CountryListSpinner;

    iget-object v6, p0, Lcom/digits/sdk/android/bv;->g:Lcom/digits/sdk/android/ar;

    const-string v5, "email_enabled"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/digits/sdk/android/bv;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/digits/sdk/android/bw;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/CountryListSpinner;Lcom/digits/sdk/android/internal/h;Lcom/digits/sdk/android/ar;ZLcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-object v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/bv;->g:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/ar;->d(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    invoke-virtual {v0}, Lcom/digits/sdk/android/bw;->b()V

    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Lcom/digits/sdk/android/cb$f;->dgts__activity_phone_number:I

    return v0
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    const-string v1, "Authentication canceled by user"

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/bw;->a(Ljava/lang/String;)V

    return-void
.end method
