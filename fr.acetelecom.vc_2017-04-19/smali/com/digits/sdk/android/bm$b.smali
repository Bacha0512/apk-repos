.class public Lcom/digits/sdk/android/bm$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/bk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digits/sdk/android/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/bm;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/digits/sdk/android/bm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/digits/sdk/android/bm;Lcom/digits/sdk/android/bm;)V
    .locals 1

    iput-object p1, p0, Lcom/digits/sdk/android/bm$b;->a:Lcom/digits/sdk/android/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/digits/sdk/android/bm$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bm$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/bm;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/bm;->a([Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/digits/sdk/android/bm;->i()Lcom/digits/sdk/android/aw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/digits/sdk/android/bm;->i()Lcom/digits/sdk/android/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    new-instance v2, Lcom/digits/sdk/android/models/Invite;

    sget-object v3, Lcom/digits/sdk/android/models/Invite$Status;->PENDING:Lcom/digits/sdk/android/models/Invite$Status;

    invoke-direct {v2, v1, p3, v3}, Lcom/digits/sdk/android/models/Invite;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/digits/sdk/android/models/Invite$Status;)V

    invoke-virtual {v0, v2}, Lcom/digits/sdk/android/bm;->a(Lcom/digits/sdk/android/models/Invite;)V

    invoke-virtual {v0}, Lcom/digits/sdk/android/bm;->h()V

    :cond_1
    return-void
.end method
