.class Lcom/digits/sdk/android/bf$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bf;->a(Landroid/widget/TextView;)V
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

    iput-object p1, p0, Lcom/digits/sdk/android/bf$2;->a:Lcom/digits/sdk/android/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bf$2;->a:Lcom/digits/sdk/android/bf;

    iget-object v0, v0, Lcom/digits/sdk/android/bf;->c:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bf$2;->a:Lcom/digits/sdk/android/bf;

    iget-object v1, v1, Lcom/digits/sdk/android/bf;->d:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->u(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bf$2;->a:Lcom/digits/sdk/android/bf;

    iget-object v0, v0, Lcom/digits/sdk/android/bf;->b:Lcom/digits/sdk/android/bg;

    iget-object v1, p0, Lcom/digits/sdk/android/bf$2;->a:Lcom/digits/sdk/android/bf;

    iget-object v1, v1, Lcom/digits/sdk/android/bf;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/digits/sdk/android/bf$2;->a:Lcom/digits/sdk/android/bf;

    invoke-static {v2}, Lcom/digits/sdk/android/bf;->a(Lcom/digits/sdk/android/bf;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/digits/sdk/android/bg;->a(Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bf$2;->a:Lcom/digits/sdk/android/bf;

    iget-object v0, v0, Lcom/digits/sdk/android/bf;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
