.class Lcom/digits/sdk/android/bs;
.super Lcom/digits/sdk/android/ao;


# instance fields
.field private final m:J

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/Boolean;

.field private final p:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field private final q:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field private final r:Lcom/digits/sdk/android/SpacedEditText;

.field private s:Ljava/lang/String;

.field private final t:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/SpacedEditText;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Landroid/widget/TextView;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lcom/digits/sdk/android/internal/StateButton;",
            "Lcom/digits/sdk/android/internal/InvertedStateButton;",
            "Lcom/digits/sdk/android/internal/InvertedStateButton;",
            "Lcom/digits/sdk/android/SpacedEditText;",
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
            "Landroid/widget/TextView;",
            "Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;",
            ")V"
        }
    .end annotation

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p6

    move-object/from16 v12, p15

    move-object/from16 v13, p18

    invoke-direct/range {v3 .. v13}, Lcom/digits/sdk/android/ao;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Landroid/widget/EditText;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/digits/sdk/android/bs;->s:Ljava/lang/String;

    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/digits/sdk/android/bs;->m:J

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/digits/sdk/android/bs;->n:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/digits/sdk/android/bs;->o:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/digits/sdk/android/bs;->p:Lcom/digits/sdk/android/internal/InvertedStateButton;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/digits/sdk/android/bs;->q:Lcom/digits/sdk/android/internal/InvertedStateButton;

    const/16 v3, 0x3a98

    move-object/from16 v0, p17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/digits/sdk/android/bs;->a(ILandroid/widget/TextView;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;)Landroid/os/CountDownTimer;

    move-result-object v3

    iput-object v3, p0, Lcom/digits/sdk/android/bs;->l:Landroid/os/CountDownTimer;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/digits/sdk/android/bs;->t:Landroid/widget/TextView;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/digits/sdk/android/bs;->r:Lcom/digits/sdk/android/SpacedEditText;

    return-void
.end method

.method constructor <init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/SpacedEditText;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Landroid/widget/TextView;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 19

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v6

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->m()Lcom/digits/sdk/android/h;

    move-result-object v7

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->n()Lcom/digits/sdk/android/q;

    move-result-object v8

    new-instance v13, Lcom/digits/sdk/android/o;

    invoke-virtual/range {p2 .. p2}, Lcom/digits/sdk/android/internal/StateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/digits/sdk/android/o;-><init>(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    invoke-direct/range {v0 .. v18}, Lcom/digits/sdk/android/bs;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/SpacedEditText;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/h;Lcom/digits/sdk/android/q;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/bd;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Landroid/widget/TextView;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/bs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/digits/sdk/android/bs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bs;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/digits/sdk/android/aw;)V
    .locals 7

    invoke-virtual {p0}, Lcom/digits/sdk/android/bs;->h()Lcom/digits/sdk/android/UserAuthApiInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/digits/sdk/android/UserAuthApiInterface;->verifyAccount()Ld/b;

    move-result-object v6

    new-instance v0, Lcom/digits/sdk/android/bs$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/bs$3;-><init>(Lcom/digits/sdk/android/bs;Landroid/content/Context;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/aw;Landroid/content/Context;)V

    invoke-interface {v6, v0}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/bs;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/bs;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/bs;Landroid/content/Context;Lcom/digits/sdk/android/aw;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/digits/sdk/android/bs;->a(Landroid/content/Context;Lcom/digits/sdk/android/aw;)V

    return-void
.end method

.method private a(Lcom/digits/sdk/android/aw;Lcom/digits/sdk/android/aw;)Z
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->o:Ljava/lang/Boolean;

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

.method static synthetic a(Lcom/digits/sdk/android/bs;Lcom/digits/sdk/android/aw;Lcom/digits/sdk/android/aw;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/digits/sdk/android/bs;->a(Lcom/digits/sdk/android/aw;Lcom/digits/sdk/android/aw;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/digits/sdk/android/bs;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/digits/sdk/android/bs;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->b:Lcom/digits/sdk/android/a;

    invoke-interface {v0}, Lcom/digits/sdk/android/a;->e()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/bs;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {p0, v0, v2}, Lcom/digits/sdk/android/bs;->a(Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "receiver"

    iget-object v3, p0, Lcom/digits/sdk/android/bs;->d:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "request_id"

    iget-object v3, p0, Lcom/digits/sdk/android/bs;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_id"

    iget-wide v4, p0, Lcom/digits/sdk/android/bs;->m:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "email_enabled"

    iget-object v3, p0, Lcom/digits/sdk/android/bs;->o:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/android/bs;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/bs;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Lcom/digits/sdk/android/bs;)Lcom/digits/sdk/android/internal/InvertedStateButton;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->p:Lcom/digits/sdk/android/internal/InvertedStateButton;

    return-object v0
.end method

.method static synthetic e(Lcom/digits/sdk/android/bs;)Lcom/digits/sdk/android/internal/InvertedStateButton;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->q:Lcom/digits/sdk/android/internal/InvertedStateButton;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->h:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->e()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->h:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bs;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->i(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->r:Lcom/digits/sdk/android/SpacedEditText;

    invoke-virtual {v0}, Lcom/digits/sdk/android/SpacedEditText;->getUnspacedText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/bs;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->d()V

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->r:Lcom/digits/sdk/android/SpacedEditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->r:Lcom/digits/sdk/android/SpacedEditText;

    invoke-virtual {v0}, Lcom/digits/sdk/android/SpacedEditText;->getUnspacedText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->a:Lcom/digits/sdk/android/h;

    iget-object v1, p0, Lcom/digits/sdk/android/bs;->s:Ljava/lang/String;

    iget-wide v2, p0, Lcom/digits/sdk/android/bs;->m:J

    new-instance v5, Lcom/digits/sdk/android/bs$1;

    invoke-direct {v5, p0, p1, p0, p1}, Lcom/digits/sdk/android/bs$1;-><init>(Lcom/digits/sdk/android/bs;Landroid/content/Context;Lcom/digits/sdk/android/an;Landroid/content/Context;)V

    invoke-virtual/range {v0 .. v5}, Lcom/digits/sdk/android/h;->a(Ljava/lang/String;JLjava/lang/String;Lcom/twitter/sdk/android/core/c;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/digits/sdk/android/at;

    iget-object v1, p0, Lcom/digits/sdk/android/bs;->c:Lcom/digits/sdk/android/bd;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Lcom/digits/sdk/android/bd;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/digits/sdk/android/bs;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->q:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->f()V

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->p:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->f()V

    invoke-super {p0, p1, p2}, Lcom/digits/sdk/android/ao;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/ci;)V
    .locals 3

    invoke-virtual {p2}, Lcom/digits/sdk/android/internal/InvertedStateButton;->d()V

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->a:Lcom/digits/sdk/android/h;

    iget-object v1, p0, Lcom/digits/sdk/android/bs;->n:Ljava/lang/String;

    new-instance v2, Lcom/digits/sdk/android/bs$2;

    invoke-direct {v2, p0, p1, p0, p2}, Lcom/digits/sdk/android/bs$2;-><init>(Lcom/digits/sdk/android/bs;Landroid/content/Context;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/InvertedStateButton;)V

    invoke-virtual {v0, v1, p3, v2}, Lcom/digits/sdk/android/h;->a(Ljava/lang/String;Lcom/digits/sdk/android/ci;Lcom/twitter/sdk/android/core/c;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/at;)V
    .locals 10

    iget-object v0, p0, Lcom/digits/sdk/android/bs;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/bs;->h:Lcom/digits/sdk/android/ar;

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

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/ar;->b(Lcom/digits/sdk/android/a/g;)V

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
