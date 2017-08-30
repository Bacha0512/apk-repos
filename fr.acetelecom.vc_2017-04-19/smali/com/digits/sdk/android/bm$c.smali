.class Lcom/digits/sdk/android/bm$c;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digits/sdk/android/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/digits/sdk/android/models/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/bm;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/digits/sdk/android/bm;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/digits/sdk/android/bm$c;->a:Lcom/digits/sdk/android/bm;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/digits/sdk/android/bm$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/digits/sdk/android/models/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/bm$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/digits/sdk/android/models/g;

    iget-object v1, v1, Lcom/digits/sdk/android/models/g;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/digits/sdk/android/models/g;

    iget-object v1, v1, Lcom/digits/sdk/android/models/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bm$c;->a:Lcom/digits/sdk/android/bm;

    iget-object v1, v0, Lcom/digits/sdk/android/bm;->j:Ljava/util/Set;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/digits/sdk/android/models/g;

    iget-object v0, v0, Lcom/digits/sdk/android/models/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/digits/sdk/android/bm$c;->a:Lcom/digits/sdk/android/bm;

    invoke-virtual {v0}, Lcom/digits/sdk/android/bm;->h()V

    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Failure retriving invitedPhoneNumbers"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
