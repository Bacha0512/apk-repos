.class public final Lb/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/b;

.field private final b:Lb/a/b$b;

.field private final c:[Z

.field private d:Z


# direct methods
.method static synthetic a(Lb/a/b$a;)Lb/a/b$b;
    .locals 1

    iget-object v0, p0, Lb/a/b$a;->b:Lb/a/b$b;

    return-object v0
.end method

.method static synthetic a(Lb/a/b$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lb/a/b$a;->d:Z

    return p1
.end method

.method static synthetic b(Lb/a/b$a;)[Z
    .locals 1

    iget-object v0, p0, Lb/a/b$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lb/a/b$a;->a:Lb/a/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lb/a/b$a;->a:Lb/a/b;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lb/a/b;->a(Lb/a/b;Lb/a/b$a;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
