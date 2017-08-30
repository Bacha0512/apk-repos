.class Lcom/digits/sdk/android/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/l;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/models/AuthConfigResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/ar;

.field final synthetic b:Lcom/digits/sdk/android/an;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field final synthetic e:Lcom/digits/sdk/android/l;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/l;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/an;Landroid/app/Activity;Lcom/digits/sdk/android/internal/InvertedStateButton;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/l$2;->e:Lcom/digits/sdk/android/l;

    iput-object p2, p0, Lcom/digits/sdk/android/l$2;->a:Lcom/digits/sdk/android/ar;

    iput-object p3, p0, Lcom/digits/sdk/android/l$2;->b:Lcom/digits/sdk/android/an;

    iput-object p4, p0, Lcom/digits/sdk/android/l$2;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/digits/sdk/android/l$2;->d:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/l$2;->a:Lcom/digits/sdk/android/ar;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->g()V

    iget-object v0, p0, Lcom/digits/sdk/android/l$2;->b:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->e()V

    iget-object v0, p0, Lcom/digits/sdk/android/l$2;->b:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/l$2;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/digits/sdk/android/l$2;->d:Lcom/digits/sdk/android/internal/InvertedStateButton;

    sget-object v3, Lcom/digits/sdk/android/ci;->a:Lcom/digits/sdk/android/ci;

    invoke-interface {v0, v1, v2, v3}, Lcom/digits/sdk/android/an;->a(Landroid/content/Context;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/ci;)V

    return-void
.end method
