.class public abstract Lcom/tapjoy/internal/es;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/es$3;,
        Lcom/tapjoy/internal/es$b;,
        Lcom/tapjoy/internal/es$a;,
        Lcom/tapjoy/internal/es$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field volatile b:I

.field c:Lcom/tapjoy/internal/es$b;

.field d:J

.field e:Lcom/tapjoy/internal/es$a;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/LinkedList;

.field private h:Lcom/tapjoy/internal/es$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/es;->f:Ljava/util/concurrent/locks/Condition;

    sget v0, Lcom/tapjoy/internal/es$c;->a:I

    iput v0, p0, Lcom/tapjoy/internal/es;->b:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/es;->g:Ljava/util/LinkedList;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tapjoy/internal/es;->d:J

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/es;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/es;->a(Z)V

    return-void
.end method


# virtual methods
.method final a()Lcom/tapjoy/internal/es$a;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/es;->h:Lcom/tapjoy/internal/es$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/es;->h:Lcom/tapjoy/internal/es$a;

    iput-object v0, p0, Lcom/tapjoy/internal/es;->e:Lcom/tapjoy/internal/es$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/es;->h:Lcom/tapjoy/internal/es$a;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/es;->e:Lcom/tapjoy/internal/es$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/es;->b:I

    iput p1, p0, Lcom/tapjoy/internal/es;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/es;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/es;->g:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/tapjoy/internal/es;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJConnectListener;

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    goto :goto_0
.end method

.method final a(J)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget v0, Lcom/tapjoy/internal/es$c;->d:I

    sget v1, Lcom/tapjoy/internal/es$c;->c:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/es;->a(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/es;->f:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tapjoy/internal/es;->d:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget v0, Lcom/tapjoy/internal/es$c;->c:I

    sget v1, Lcom/tapjoy/internal/es$c;->d:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/es;->a(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget v0, Lcom/tapjoy/internal/es$c;->c:I

    sget v1, Lcom/tapjoy/internal/es$c;->d:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/es;->a(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lcom/tapjoy/internal/es$c;->c:I

    sget v2, Lcom/tapjoy/internal/es$c;->d:I

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/es;->a(I)V

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x3e8

    :try_start_0
    iput-wide v0, p0, Lcom/tapjoy/internal/es;->d:J

    iget-object v0, p0, Lcom/tapjoy/internal/es;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/es;->g:Ljava/util/LinkedList;

    const-class v3, Lcom/tapjoy/TJConnectListener;

    invoke-static {p4, v3}, Lcom/tapjoy/internal/ek;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/tapjoy/internal/es$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tapjoy/internal/es$a;-><init>(Lcom/tapjoy/internal/es;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    sget-object v3, Lcom/tapjoy/internal/es$3;->a:[I

    iget v4, p0, Lcom/tapjoy/internal/es;->b:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    sget v0, Lcom/tapjoy/internal/es$c;->a:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/es;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/es;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    iput-object v2, p0, Lcom/tapjoy/internal/es;->e:Lcom/tapjoy/internal/es$a;

    sget-object v3, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    new-instance v4, Lcom/tapjoy/internal/es$1;

    invoke-direct {v4, p0}, Lcom/tapjoy/internal/es$1;-><init>(Lcom/tapjoy/internal/es;)V

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/eo$a;->addObserver(Ljava/util/Observer;)V

    iget-object v3, v2, Lcom/tapjoy/internal/es$a;->a:Landroid/content/Context;

    iget-object v4, v2, Lcom/tapjoy/internal/es$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/tapjoy/internal/es$a;->c:Ljava/util/Hashtable;

    new-instance v5, Lcom/tapjoy/internal/es$2;

    invoke-direct {v5, p0}, Lcom/tapjoy/internal/es$2;-><init>(Lcom/tapjoy/internal/es;)V

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lcom/tapjoy/internal/es$c;->b:I

    sget v2, Lcom/tapjoy/internal/es$c;->a:I

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/es;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/internal/es;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    :try_start_4
    iput-object v2, p0, Lcom/tapjoy/internal/es;->h:Lcom/tapjoy/internal/es$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :pswitch_3
    :try_start_5
    iput-object v2, p0, Lcom/tapjoy/internal/es;->h:Lcom/tapjoy/internal/es$a;

    invoke-virtual {p0}, Lcom/tapjoy/internal/es;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/es;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
