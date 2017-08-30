.class Lcom/digits/sdk/android/ca;
.super Lcom/digits/sdk/android/ao;


# instance fields
.field private final m:Ljava/lang/String;

.field private final n:J

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 14
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
            "Lcom/digits/sdk/android/h;",
            "Lcom/digits/sdk/android/q;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/bd;",
            "Lcom/digits/sdk/android/a;",
            "Lcom/digits/sdk/android/ar;",
            "Ljava/lang/Boolean;",
            "Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;",
            ")V"
        }
    .end annotation

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p4

    move-object/from16 v11, p13

    move-object/from16 v12, p15

    invoke-direct/range {v2 .. v12}, Lcom/digits/sdk/android/ao;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/digits/sdk/android/ca;->m:Ljava/lang/String;

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/digits/sdk/android/ca;->n:J

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/digits/sdk/android/ca;->o:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/digits/sdk/android/ca;->p:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 17

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v4

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->m()Lcom/digits/sdk/android/h;

    move-result-object v5

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->n()Lcom/digits/sdk/android/q;

    move-result-object v6

    new-instance v11, Lcom/digits/sdk/android/o;

    invoke-virtual/range {p2 .. p2}, Lcom/digits/sdk/android/internal/StateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/digits/sdk/android/o;-><init>(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Lcom/digits/sdk/android/ca;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/ca;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/digits/sdk/android/aw;)V
    .locals 7

    invoke-virtual {p0}, Lcom/digits/sdk/android/ca;->h()Lcom/digits/sdk/android/UserAuthApiInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/digits/sdk/android/UserAuthApiInterface;->verifyAccount()Ld/b;

    move-result-object v6

    new-instance v0, Lcom/digits/sdk/android/ca$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/ca$2;-><init>(Lcom/digits/sdk/android/ca;Landroid/content/Context;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/aw;Landroid/content/Context;)V

    invoke-interface {v6, v0}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/ca;Landroid/content/Context;Lcom/digits/sdk/android/aw;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/digits/sdk/android/ca;->a(Landroid/content/Context;Lcom/digits/sdk/android/aw;)V

    return-void
.end method

.method private a(Lcom/digits/sdk/android/aw;Lcom/digits/sdk/android/aw;)Z
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/aw;->b()Lcom/digits/sdk/android/models/f;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/aw;->a:Lcom/digits/sdk/android/models/f;

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/models/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/digits/sdk/android/ca;Lcom/digits/sdk/android/aw;Lcom/digits/sdk/android/aw;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/digits/sdk/android/ca;->a(Lcom/digits/sdk/android/aw;Lcom/digits/sdk/android/aw;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/digits/sdk/android/ca;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->p:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->i()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->h:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/ca;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->o(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ca;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->d()V

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->e:Landroid/widget/EditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->a:Lcom/digits/sdk/android/h;

    iget-object v1, p0, Lcom/digits/sdk/android/ca;->m:Ljava/lang/String;

    iget-wide v2, p0, Lcom/digits/sdk/android/ca;->n:J

    new-instance v5, Lcom/digits/sdk/android/ca$1;

    invoke-direct {v5, p0, p1, p0, p1}, Lcom/digits/sdk/android/ca$1;-><init>(Lcom/digits/sdk/android/ca;Landroid/content/Context;Lcom/digits/sdk/android/an;Landroid/content/Context;)V

    invoke-virtual/range {v0 .. v5}, Lcom/digits/sdk/android/h;->b(Ljava/lang/String;JLjava/lang/String;Lcom/twitter/sdk/android/core/c;)V

    :cond_0
    return-void
.end method

.method a(Lcom/digits/sdk/android/at;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ca;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0, p1}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/at;)V

    return-void
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
