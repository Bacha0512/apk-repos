.class Lcom/digits/sdk/android/bj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/bi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bj;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/digits/sdk/android/bj;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bj$1;->c:Lcom/digits/sdk/android/bj;

    iput-object p2, p0, Lcom/digits/sdk/android/bj$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/digits/sdk/android/bj$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/digits/sdk/android/bj$1;->c:Lcom/digits/sdk/android/bj;

    iget-object v0, v0, Lcom/digits/sdk/android/bj;->f:Lcom/digits/sdk/android/internal/d;

    iget-object v1, p0, Lcom/digits/sdk/android/bj$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/bj$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/digits/sdk/android/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
