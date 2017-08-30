.class Lcom/digits/sdk/android/bw$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bw$1;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/digits/sdk/android/bw$1;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bw$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bw$1$1;->b:Lcom/digits/sdk/android/bw$1;

    iput-object p2, p0, Lcom/digits/sdk/android/bw$1$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1$1;->b:Lcom/digits/sdk/android/bw$1;

    iget-object v0, v0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    iget-object v0, v0, Lcom/digits/sdk/android/bw;->h:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bw$1$1;->b:Lcom/digits/sdk/android/bw$1;

    iget-object v1, v1, Lcom/digits/sdk/android/bw$1;->k:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->g(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1$1;->b:Lcom/digits/sdk/android/bw$1;

    iget-object v1, v0, Lcom/digits/sdk/android/bw$1;->b:Lcom/digits/sdk/android/bw;

    iget-object v0, p0, Lcom/digits/sdk/android/bw$1$1;->b:Lcom/digits/sdk/android/bw$1;

    iget-object v0, v0, Lcom/digits/sdk/android/bw$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/digits/sdk/android/bw$1$1;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Lcom/digits/sdk/android/bw;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method
