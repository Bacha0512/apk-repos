.class Lcom/digits/sdk/android/bc$1;
.super Lcom/digits/sdk/android/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bc;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/digits/sdk/android/ak",
        "<",
        "Lb/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/digits/sdk/android/aw;

.field final synthetic d:Lcom/digits/sdk/android/bc;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bc;Landroid/content/Context;Lcom/digits/sdk/android/an;Landroid/content/Context;Lcom/digits/sdk/android/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bc$1;->d:Lcom/digits/sdk/android/bc;

    iput-object p4, p0, Lcom/digits/sdk/android/bc$1;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/digits/sdk/android/bc$1;->b:Lcom/digits/sdk/android/aw;

    invoke-direct {p0, p2, p3}, Lcom/digits/sdk/android/ak;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/an;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lb/ac;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/bc$1;->d:Lcom/digits/sdk/android/bc;

    iget-object v0, v0, Lcom/digits/sdk/android/bc;->h:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/bc$1;->d:Lcom/digits/sdk/android/bc;

    iget-object v1, v1, Lcom/digits/sdk/android/bc;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->s(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/bc$1;->d:Lcom/digits/sdk/android/bc;

    iget-object v1, p0, Lcom/digits/sdk/android/bc$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/digits/sdk/android/bc$1;->b:Lcom/digits/sdk/android/aw;

    iget-object v3, p0, Lcom/digits/sdk/android/bc$1;->d:Lcom/digits/sdk/android/bc;

    invoke-static {v3}, Lcom/digits/sdk/android/bc;->a(Lcom/digits/sdk/android/bc;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/digits/sdk/android/bc$1;->d:Lcom/digits/sdk/android/bc;

    iget-object v4, v4, Lcom/digits/sdk/android/bc;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/digits/sdk/android/bc;->a(Landroid/content/Context;Lcom/digits/sdk/android/aw;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-void
.end method
