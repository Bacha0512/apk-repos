.class Lcom/digits/sdk/android/bw$1;
.super Lcom/digits/sdk/android/bt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bw;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/digits/sdk/android/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/digits/sdk/android/bw;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bw;Landroid/content/Context;Lcom/digits/sdk/android/h;Ljava/lang/String;Lcom/digits/sdk/android/ci;ZLandroid/os/ResultReceiver;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;Landroid/content/Context;)V
    .locals 10

    iput-object p1, p0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/digits/sdk/android/bw$1;->a:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/digits/sdk/android/bt;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/h;Ljava/lang/String;Lcom/digits/sdk/android/ci;ZLandroid/os/ResultReceiver;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    iget-object v0, v0, Lcom/digits/sdk/android/bw;->f:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->e()V

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    iget-object v0, v0, Lcom/digits/sdk/android/bw;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/digits/sdk/android/bw$1$1;

    invoke-direct {v1, p0, p1}, Lcom/digits/sdk/android/bw$1$1;-><init>(Lcom/digits/sdk/android/bw$1;Landroid/content/Intent;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/digits/sdk/android/at;)V
    .locals 2

    instance-of v0, p1, Lcom/digits/sdk/android/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    invoke-virtual {p1}, Lcom/digits/sdk/android/at;->b()Lcom/digits/sdk/android/models/AuthConfigResponse;

    move-result-object v1

    iget-boolean v1, v1, Lcom/digits/sdk/android/models/AuthConfigResponse;->b:Z

    iput-boolean v1, v0, Lcom/digits/sdk/android/bw;->n:Z

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    invoke-virtual {v0}, Lcom/digits/sdk/android/bw;->h()V

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    iget-object v1, p0, Lcom/digits/sdk/android/bw$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/digits/sdk/android/bw;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    iget-object v1, p0, Lcom/digits/sdk/android/bw$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/digits/sdk/android/bw;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    goto :goto_0
.end method
