.class abstract Lcom/digits/sdk/android/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/digits/sdk/android/an;


# instance fields
.field final a:Lcom/digits/sdk/android/h;

.field final b:Lcom/digits/sdk/android/a;

.field final c:Lcom/digits/sdk/android/bd;

.field final d:Landroid/os/ResultReceiver;

.field final e:Landroid/widget/EditText;

.field final f:Lcom/digits/sdk/android/internal/StateButton;

.field final g:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/digits/sdk/android/ar;

.field final i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

.field final j:Lcom/digits/sdk/android/q;

.field k:I

.field l:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lcom/digits/sdk/android/internal/StateButton;",
            "Landroid/widget/EditText;",
            "Lcom/digits/sdk/android/h;",
            "Lcom/digits/sdk/android/q;",
            "Lcom/digits/sdk/android/bd;",
            "Lcom/digits/sdk/android/a;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/ar;",
            "Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/ao;->d:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/digits/sdk/android/ao;->a:Lcom/digits/sdk/android/h;

    iput-object p5, p0, Lcom/digits/sdk/android/ao;->j:Lcom/digits/sdk/android/q;

    iput-object p7, p0, Lcom/digits/sdk/android/ao;->b:Lcom/digits/sdk/android/a;

    iput-object p2, p0, Lcom/digits/sdk/android/ao;->f:Lcom/digits/sdk/android/internal/StateButton;

    iput-object p3, p0, Lcom/digits/sdk/android/ao;->e:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/digits/sdk/android/ao;->c:Lcom/digits/sdk/android/bd;

    iput-object p8, p0, Lcom/digits/sdk/android/ao;->g:Lcom/twitter/sdk/android/core/k;

    const/4 v0, 0x0

    iput v0, p0, Lcom/digits/sdk/android/ao;->k:I

    iput-object p9, p0, Lcom/digits/sdk/android/ao;->h:Lcom/digits/sdk/android/ar;

    iput-object p10, p0, Lcom/digits/sdk/android/ao;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    return-void
.end method

.method private b(Lcom/digits/sdk/android/at;)Z
    .locals 2

    iget v0, p0, Lcom/digits/sdk/android/ao;->k:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    instance-of v0, p1, Lcom/digits/sdk/android/ch;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "digits_event_details_builder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method a(ILandroid/widget/TextView;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;)Landroid/os/CountDownTimer;
    .locals 9

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/digits/sdk/android/ao$2;

    int-to-long v2, p1

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/digits/sdk/android/ao$2;-><init>(Lcom/digits/sdk/android/ao;JJLandroid/widget/TextView;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;)V

    return-object v0
.end method

.method abstract a()V
.end method

.method a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x8c

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/ResultReceiver;Lcom/digits/sdk/android/at;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/digits/sdk/android/ao;->b:Lcom/digits/sdk/android/a;

    invoke-interface {v1}, Lcom/digits/sdk/android/a;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "receiver"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "fallback_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "digits_event_details_builder"

    iget-object v2, p0, Lcom/digits/sdk/android/ao;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/ao;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V
    .locals 2

    iget v0, p0, Lcom/digits/sdk/android/ao;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/digits/sdk/android/ao;->k:I

    invoke-virtual {p0, p2}, Lcom/digits/sdk/android/ao;->a(Lcom/digits/sdk/android/at;)V

    invoke-direct {p0, p2}, Lcom/digits/sdk/android/ao;->b(Lcom/digits/sdk/android/at;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/digits/sdk/android/ao;->a()V

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->d:Landroid/os/ResultReceiver;

    invoke-virtual {p0, p1, v0, p2}, Lcom/digits/sdk/android/ao;->a(Landroid/content/Context;Landroid/os/ResultReceiver;Lcom/digits/sdk/android/at;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ao;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/digits/sdk/android/at;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->f()V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Lcom/digits/sdk/android/aw;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->g:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0, p2}, Lcom/twitter/sdk/android/core/k;->a(Lcom/twitter/sdk/android/core/j;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->e()V

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/digits/sdk/android/ao$1;

    invoke-direct {v1, p0, p3, p4, p1}, Lcom/digits/sdk/android/ao$1;-><init>(Lcom/digits/sdk/android/ao;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;Landroid/content/Context;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/ci;)V
    .locals 0

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->e()V

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->b:Lcom/digits/sdk/android/a;

    invoke-interface {v0}, Lcom/digits/sdk/android/a;->f()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2, p3}, Lcom/digits/sdk/android/ao;->a(Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "receiver"

    iget-object v3, p0, Lcom/digits/sdk/android/ao;->d:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/android/ao;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/ao;->b(Landroid/content/Context;)V

    return-void
.end method

.method abstract a(Lcom/digits/sdk/android/at;)V
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->g()V

    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c()Landroid/text/TextWatcher;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/digits/sdk/android/bd;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->c:Lcom/digits/sdk/android/bd;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/ao;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/digits/sdk/android/ao;->e()V

    return-void
.end method
