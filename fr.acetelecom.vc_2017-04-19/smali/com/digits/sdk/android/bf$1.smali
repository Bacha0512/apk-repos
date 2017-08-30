.class Lcom/digits/sdk/android/bf$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bf;->a(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/bf;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    iget-object v0, v0, Lcom/digits/sdk/android/bf;->c:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    iget-object v1, v1, Lcom/digits/sdk/android/bf;->d:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->v(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    iget-object v0, v0, Lcom/digits/sdk/android/bf;->a:Landroid/app/Activity;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    iget-object v0, v0, Lcom/digits/sdk/android/bf;->b:Lcom/digits/sdk/android/bg;

    iget-object v1, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    invoke-static {v1}, Lcom/digits/sdk/android/bf;->a(Lcom/digits/sdk/android/bf;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    invoke-static {v2}, Lcom/digits/sdk/android/bf;->b(Lcom/digits/sdk/android/bf;)Lcom/digits/sdk/android/at;

    move-result-object v2

    iget-object v3, p0, Lcom/digits/sdk/android/bf$1;->a:Lcom/digits/sdk/android/bf;

    iget-object v3, v3, Lcom/digits/sdk/android/bf;->d:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-interface {v0, v1, v2, v3}, Lcom/digits/sdk/android/bg;->a(Landroid/os/ResultReceiver;Ljava/lang/Exception;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method
