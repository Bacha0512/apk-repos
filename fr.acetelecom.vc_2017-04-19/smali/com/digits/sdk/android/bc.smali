.class Lcom/digits/sdk/android/bc;
.super Lcom/digits/sdk/android/ao;


# instance fields
.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Ljava/lang/String;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lcom/digits/sdk/android/internal/StateButton;",
            "Landroid/widget/EditText;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/a;",
            "Lcom/digits/sdk/android/h;",
            "Lcom/digits/sdk/android/q;",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/ar;",
            "Lcom/digits/sdk/android/bd;",
            "Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p10

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/digits/sdk/android/ao;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/digits/sdk/android/bc;->m:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Landroid/os/ResultReceiver;Ljava/lang/String;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 12

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v4

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v5

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->m()Lcom/digits/sdk/android/h;

    move-result-object v6

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->n()Lcom/digits/sdk/android/q;

    move-result-object v7

    new-instance v10, Lcom/digits/sdk/android/ba;

    invoke-virtual {p1}, Lcom/digits/sdk/android/internal/StateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/digits/sdk/android/ba;-><init>(Landroid/content/res/Resources;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/digits/sdk/android/bc;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Ljava/lang/String;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/bc;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->m:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->j()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->h:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bc;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->r(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/bc;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->d()V

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->e:Landroid/widget/EditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/bc;->g:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v5

    check-cast v5, Lcom/digits/sdk/android/aw;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/digits/sdk/android/bc;->h()Lcom/digits/sdk/android/UserAuthApiInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/digits/sdk/android/UserAuthApiInterface;->email(Ljava/lang/String;)Ld/b;

    move-result-object v6

    new-instance v0, Lcom/digits/sdk/android/bc$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/bc$1;-><init>(Lcom/digits/sdk/android/bc;Landroid/content/Context;Lcom/digits/sdk/android/an;Landroid/content/Context;Lcom/digits/sdk/android/aw;)V

    invoke-interface {v6, v0}, Ld/b;->a(Ld/d;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/digits/sdk/android/ch;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/ch;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/digits/sdk/android/bc;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/digits/sdk/android/bc;->e:Landroid/widget/EditText;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__invalid_email:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(Lcom/digits/sdk/android/at;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bc;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0, p1}, Lcom/digits/sdk/android/ar;->b(Lcom/digits/sdk/android/at;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/bc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Lcom/digits/sdk/android/UserAuthApiInterface;
    .locals 1

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->k()Lcom/digits/sdk/android/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->a()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/UserAuthApiInterface;

    return-object v0
.end method
