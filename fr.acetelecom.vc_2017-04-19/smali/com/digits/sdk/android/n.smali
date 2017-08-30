.class Lcom/digits/sdk/android/n;
.super Lcom/digits/sdk/android/ao;


# instance fields
.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/Boolean;

.field private final o:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field private final p:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field private final q:Landroid/widget/TextView;

.field private final r:Lcom/digits/sdk/android/SpacedEditText;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/SpacedEditText;Ljava/lang/String;Lcom/digits/sdk/android/ar;ZLandroid/widget/TextView;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 16

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v7

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->m()Lcom/digits/sdk/android/h;

    move-result-object v8

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->n()Lcom/digits/sdk/android/q;

    move-result-object v9

    new-instance v10, Lcom/digits/sdk/android/o;

    invoke-virtual/range {p2 .. p2}, Lcom/digits/sdk/android/internal/StateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/digits/sdk/android/o;-><init>(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Lcom/digits/sdk/android/n;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/SpacedEditText;Ljava/lang/String;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/ar;ZLandroid/widget/TextView;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method

.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/SpacedEditText;Ljava/lang/String;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/ar;ZLandroid/widget/TextView;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lcom/digits/sdk/android/internal/StateButton;",
            "Lcom/digits/sdk/android/internal/InvertedStateButton;",
            "Lcom/digits/sdk/android/internal/InvertedStateButton;",
            "Lcom/digits/sdk/android/SpacedEditText;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/h;",
            "Lcom/digits/sdk/android/q;",
            "Lcom/digits/sdk/android/bd;",
            "Lcom/digits/sdk/android/a;",
            "Lcom/digits/sdk/android/ar;",
            "Z",
            "Landroid/widget/TextView;",
            "Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;",
            ")V"
        }
    .end annotation

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p7

    move-object/from16 v12, p12

    move-object/from16 v13, p15

    invoke-direct/range {v3 .. v13}, Lcom/digits/sdk/android/ao;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/digits/sdk/android/n;->m:Ljava/lang/String;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/digits/sdk/android/n;->n:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/digits/sdk/android/n;->o:Lcom/digits/sdk/android/internal/InvertedStateButton;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/digits/sdk/android/n;->p:Lcom/digits/sdk/android/internal/InvertedStateButton;

    const/16 v3, 0x3a98

    move-object/from16 v0, p14

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/digits/sdk/android/n;->a(ILandroid/widget/TextView;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;)Landroid/os/CountDownTimer;

    move-result-object v3

    iput-object v3, p0, Lcom/digits/sdk/android/n;->l:Landroid/os/CountDownTimer;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/digits/sdk/android/n;->q:Landroid/widget/TextView;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/digits/sdk/android/n;->r:Lcom/digits/sdk/android/SpacedEditText;

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/n;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/digits/sdk/android/n;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/n;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/digits/sdk/android/n;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/n;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/digits/sdk/android/n;)Lcom/digits/sdk/android/internal/InvertedStateButton;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/n;->o:Lcom/digits/sdk/android/internal/InvertedStateButton;

    return-object v0
.end method

.method static synthetic e(Lcom/digits/sdk/android/n;)Lcom/digits/sdk/android/internal/InvertedStateButton;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/n;->p:Lcom/digits/sdk/android/internal/InvertedStateButton;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/n;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->h()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/n;->h:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/n;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->l(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/n;->r:Lcom/digits/sdk/android/SpacedEditText;

    invoke-virtual {v0}, Lcom/digits/sdk/android/SpacedEditText;->getUnspacedText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/n;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->d()V

    iget-object v0, p0, Lcom/digits/sdk/android/n;->r:Lcom/digits/sdk/android/SpacedEditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/digits/sdk/android/n;->r:Lcom/digits/sdk/android/SpacedEditText;

    invoke-virtual {v0}, Lcom/digits/sdk/android/SpacedEditText;->getUnspacedText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/n;->a:Lcom/digits/sdk/android/h;

    iget-object v2, p0, Lcom/digits/sdk/android/n;->m:Ljava/lang/String;

    new-instance v3, Lcom/digits/sdk/android/n$1;

    invoke-direct {v3, p0, p1, p0, p1}, Lcom/digits/sdk/android/n$1;-><init>(Lcom/digits/sdk/android/n;Landroid/content/Context;Lcom/digits/sdk/android/an;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/digits/sdk/android/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/c;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/digits/sdk/android/at;

    iget-object v1, p0, Lcom/digits/sdk/android/n;->c:Lcom/digits/sdk/android/bd;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Lcom/digits/sdk/android/bd;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/digits/sdk/android/n;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/n;->p:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->f()V

    iget-object v0, p0, Lcom/digits/sdk/android/n;->o:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->f()V

    invoke-super {p0, p1, p2}, Lcom/digits/sdk/android/ao;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/ci;)V
    .locals 3

    invoke-virtual {p2}, Lcom/digits/sdk/android/internal/InvertedStateButton;->d()V

    iget-object v0, p0, Lcom/digits/sdk/android/n;->a:Lcom/digits/sdk/android/h;

    iget-object v1, p0, Lcom/digits/sdk/android/n;->m:Ljava/lang/String;

    new-instance v2, Lcom/digits/sdk/android/n$2;

    invoke-direct {v2, p0, p1, p0, p2}, Lcom/digits/sdk/android/n$2;-><init>(Lcom/digits/sdk/android/n;Landroid/content/Context;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/InvertedStateButton;)V

    invoke-virtual {v0, v1, p3, v2}, Lcom/digits/sdk/android/h;->b(Ljava/lang/String;Lcom/digits/sdk/android/ci;Lcom/twitter/sdk/android/core/c;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/at;)V
    .locals 10

    iget-object v0, p0, Lcom/digits/sdk/android/n;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/n;->h:Lcom/digits/sdk/android/ar;

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

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/ar;->c(Lcom/digits/sdk/android/a/g;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/digits/sdk/android/ao;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
