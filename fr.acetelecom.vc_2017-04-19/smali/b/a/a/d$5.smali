.class Lb/a/a/d$5;
.super Lb/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/d;->a(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lb/a/a/d;


# direct methods
.method varargs constructor <init>(Lb/a/a/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lb/a/a/d$5;->e:Lb/a/a/d;

    iput p4, p0, Lb/a/a/d$5;->a:I

    iput-object p5, p0, Lb/a/a/d$5;->c:Ljava/util/List;

    iput-boolean p6, p0, Lb/a/a/d$5;->d:Z

    invoke-direct {p0, p2, p3}, Lb/a/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lb/a/a/d$5;->e:Lb/a/a/d;

    invoke-static {v0}, Lb/a/a/d;->h(Lb/a/a/d;)Lb/a/a/m;

    move-result-object v0

    iget v1, p0, Lb/a/a/d$5;->a:I

    iget-object v2, p0, Lb/a/a/d$5;->c:Ljava/util/List;

    iget-boolean v3, p0, Lb/a/a/d$5;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/m;->a(ILjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lb/a/a/d$5;->e:Lb/a/a/d;

    iget-object v1, v1, Lb/a/a/d;->i:Lb/a/a/c;

    iget v2, p0, Lb/a/a/d$5;->a:I

    sget-object v3, Lb/a/a/a;->l:Lb/a/a/a;

    invoke-interface {v1, v2, v3}, Lb/a/a/c;->a(ILb/a/a/a;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/a/a/d$5;->d:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lb/a/a/d$5;->e:Lb/a/a/d;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lb/a/a/d$5;->e:Lb/a/a/d;

    invoke-static {v0}, Lb/a/a/d;->i(Lb/a/a/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lb/a/a/d$5;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
