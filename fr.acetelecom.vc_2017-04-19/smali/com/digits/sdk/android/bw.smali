.class Lcom/digits/sdk/android/bw;
.super Lcom/digits/sdk/android/ao;


# instance fields
.field final m:Lcom/digits/sdk/android/CountryListSpinner;

.field n:Z

.field o:Z

.field p:Z

.field private final q:Lcom/digits/sdk/android/internal/h;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/CountryListSpinner;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/internal/h;Lcom/digits/sdk/android/ar;ZLcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lcom/digits/sdk/android/internal/StateButton;",
            "Landroid/widget/EditText;",
            "Lcom/digits/sdk/android/CountryListSpinner;",
            "Lcom/digits/sdk/android/h;",
            "Lcom/digits/sdk/android/q;",
            "Lcom/digits/sdk/android/bd;",
            "Lcom/digits/sdk/android/a;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/internal/h;",
            "Lcom/digits/sdk/android/ar;",
            "Z",
            "Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p13

    invoke-direct/range {v1 .. v11}, Lcom/digits/sdk/android/ao;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/digits/sdk/android/bw;->m:Lcom/digits/sdk/android/CountryListSpinner;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/digits/sdk/android/bw;->q:Lcom/digits/sdk/android/internal/h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/digits/sdk/android/bw;->n:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/digits/sdk/android/bw;->o:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/digits/sdk/android/bw;->p:Z

    return-void
.end method

.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/CountryListSpinner;Lcom/digits/sdk/android/internal/h;Lcom/digits/sdk/android/ar;ZLcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 14

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->m()Lcom/digits/sdk/android/h;

    move-result-object v5

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->n()Lcom/digits/sdk/android/q;

    move-result-object v6

    new-instance v7, Lcom/digits/sdk/android/bx;

    invoke-virtual/range {p2 .. p2}, Lcom/digits/sdk/android/internal/StateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/digits/sdk/android/bx;-><init>(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v8

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/digits/sdk/android/bw;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/CountryListSpinner;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/internal/h;Lcom/digits/sdk/android/ar;ZLcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v0

    invoke-direct {p0}, Lcom/digits/sdk/android/bw;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/bw;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/ar;->f(Lcom/digits/sdk/android/a/f;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/digits/sdk/android/bw;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/ar;->e(Lcom/digits/sdk/android/a/f;)V

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    iget v0, p0, Lcom/digits/sdk/android/bw;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Lcom/digits/sdk/android/ci;
    .locals 1

    iget-boolean v0, p0, Lcom/digits/sdk/android/bw;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/digits/sdk/android/bw;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/digits/sdk/android/ci;->a:Lcom/digits/sdk/android/ci;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/digits/sdk/android/ci;->b:Lcom/digits/sdk/android/ci;

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Lcom/digits/sdk/android/bt;
    .locals 12

    new-instance v0, Lcom/digits/sdk/android/bw$1;

    iget-object v3, p0, Lcom/digits/sdk/android/bw;->a:Lcom/digits/sdk/android/h;

    invoke-direct {p0}, Lcom/digits/sdk/android/bw;->k()Lcom/digits/sdk/android/ci;

    move-result-object v5

    iget-boolean v6, p0, Lcom/digits/sdk/android/bw;->p:Z

    iget-object v7, p0, Lcom/digits/sdk/android/bw;->d:Landroid/os/ResultReceiver;

    iget-object v8, p0, Lcom/digits/sdk/android/bw;->b:Lcom/digits/sdk/android/a;

    iget-object v1, p0, Lcom/digits/sdk/android/bw;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/digits/sdk/android/bw$1;-><init>(Lcom/digits/sdk/android/bw;Landroid/content/Context;Lcom/digits/sdk/android/h;Ljava/lang/String;Lcom/digits/sdk/android/ci;ZLandroid/os/ResultReceiver;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;Landroid/content/Context;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/digits/sdk/android/bw;->i()V

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/bw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->d()V

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->e:Landroid/widget/EditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->m:Lcom/digits/sdk/android/CountryListSpinner;

    invoke-virtual {v0}, Lcom/digits/sdk/android/CountryListSpinner;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/w;

    iget v0, v0, Lcom/digits/sdk/android/w;->b:I

    iget-object v1, p0, Lcom/digits/sdk/android/bw;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    invoke-direct {p0, v2, v3, v1}, Lcom/digits/sdk/android/bw;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/digits/sdk/android/bw;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/digits/sdk/android/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/bt;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/ResultReceiver;Lcom/digits/sdk/android/at;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/digits/sdk/android/bw;->b:Lcom/digits/sdk/android/a;

    invoke-interface {v1}, Lcom/digits/sdk/android/a;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "receiver"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "fallback_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "digits_event_details_builder"

    iget-object v2, p0, Lcom/digits/sdk/android/bw;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/at;)V
    .locals 10

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/bw;->h:Lcom/digits/sdk/android/ar;

    new-instance v2, Lcom/digits/sdk/android/a/g;

    iget-object v3, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/digits/sdk/android/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/digits/sdk/android/at;)V

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/g;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/models/h;)V
    .locals 2

    invoke-static {p1}, Lcom/digits/sdk/android/models/h;->a(Lcom/digits/sdk/android/models/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/digits/sdk/android/models/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/digits/sdk/android/models/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "digits_event_details_builder"

    iget-object v2, p0, Lcom/digits/sdk/android/bw;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/digits/sdk/android/bw;->d:Landroid/os/ResultReceiver;

    const/16 v2, 0x190

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/digits/sdk/android/models/h;)V
    .locals 4

    invoke-static {p1}, Lcom/digits/sdk/android/models/h;->b(Lcom/digits/sdk/android/models/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->m:Lcom/digits/sdk/android/CountryListSpinner;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-virtual {p1}, Lcom/digits/sdk/android/models/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/digits/sdk/android/models/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/digits/sdk/android/CountryListSpinner;->a(Ljava/util/Locale;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digits/sdk/android/bw;->o:Z

    iget-boolean v0, p0, Lcom/digits/sdk/android/bw;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->f:Lcom/digits/sdk/android/internal/StateButton;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__call_me:I

    sget v2, Lcom/digits/sdk/android/cb$g;->dgts__calling:I

    sget v3, Lcom/digits/sdk/android/cb$g;->dgts__calling:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/digits/sdk/android/internal/StateButton;->a(III)V

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->q:Lcom/digits/sdk/android/internal/h;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__terms_text_call_me:I

    invoke-interface {v0, v1}, Lcom/digits/sdk/android/internal/h;->a(I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/digits/sdk/android/ao;->onTextChanged(Ljava/lang/CharSequence;III)V

    sget-object v0, Lcom/digits/sdk/android/ci;->a:Lcom/digits/sdk/android/ci;

    invoke-direct {p0}, Lcom/digits/sdk/android/bw;->k()Lcom/digits/sdk/android/ci;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digits/sdk/android/bw;->o:Z

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->f:Lcom/digits/sdk/android/internal/StateButton;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__continue:I

    sget v2, Lcom/digits/sdk/android/cb$g;->dgts__sending:I

    sget v3, Lcom/digits/sdk/android/cb$g;->dgts__done:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/digits/sdk/android/internal/StateButton;->a(III)V

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->g()V

    iget-object v0, p0, Lcom/digits/sdk/android/bw;->q:Lcom/digits/sdk/android/internal/h;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__terms_text:I

    invoke-interface {v0, v1}, Lcom/digits/sdk/android/internal/h;->a(I)V

    :cond_0
    return-void
.end method
