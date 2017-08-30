.class Lcom/digits/sdk/android/h$1;
.super Lcom/digits/sdk/android/bt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/h;->b(Lcom/digits/sdk/android/i;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Lcom/digits/sdk/android/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/i;

.field final synthetic b:Lcom/digits/sdk/android/h;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/h;Landroid/content/Context;Lcom/digits/sdk/android/h;Ljava/lang/String;Lcom/digits/sdk/android/ci;ZLandroid/os/ResultReceiver;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;Lcom/digits/sdk/android/i;)V
    .locals 10

    iput-object p1, p0, Lcom/digits/sdk/android/h$1;->b:Lcom/digits/sdk/android/h;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/digits/sdk/android/h$1;->a:Lcom/digits/sdk/android/i;

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

    iget-object v0, p0, Lcom/digits/sdk/android/h$1;->b:Lcom/digits/sdk/android/h;

    invoke-static {v0}, Lcom/digits/sdk/android/h;->a(Lcom/digits/sdk/android/h;)Lcom/digits/sdk/android/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/h$1;->k:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->g(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/h$1;->a:Lcom/digits/sdk/android/i;

    iget-object v0, v0, Lcom/digits/sdk/android/i;->e:Lcom/digits/sdk/android/m;

    invoke-interface {v0, p1}, Lcom/digits/sdk/android/m;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/at;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/h$1;->b:Lcom/digits/sdk/android/h;

    invoke-static {v0}, Lcom/digits/sdk/android/h;->a(Lcom/digits/sdk/android/h;)Lcom/digits/sdk/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->b()V

    iget-object v0, p0, Lcom/digits/sdk/android/h$1;->a:Lcom/digits/sdk/android/i;

    iget-object v0, v0, Lcom/digits/sdk/android/i;->e:Lcom/digits/sdk/android/m;

    invoke-interface {v0, p1}, Lcom/digits/sdk/android/m;->a(Lcom/digits/sdk/android/at;)V

    return-void
.end method
