.class Lcom/digits/sdk/android/ContactsUploadService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/ContactsUploadService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/models/j;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lcom/digits/sdk/android/ContactsUploadService;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ContactsUploadService;Lcom/digits/sdk/android/models/j;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->d:Lcom/digits/sdk/android/ContactsUploadService;

    iput-object p2, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->a:Lcom/digits/sdk/android/models/j;

    iput-object p3, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->d:Lcom/digits/sdk/android/ContactsUploadService;

    invoke-static {v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/ContactsUploadService;)Lcom/digits/sdk/android/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->a()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/UserAuthApiInterface;

    iget-object v1, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->a:Lcom/digits/sdk/android/models/j;

    invoke-interface {v0, v1}, Lcom/digits/sdk/android/UserAuthApiInterface;->upload(Lcom/digits/sdk/android/models/j;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    invoke-virtual {v0}, Ld/l;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/twitter/sdk/android/core/m;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/m;-><init>(Ld/l;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->d:Lcom/digits/sdk/android/ContactsUploadService;

    invoke-static {v0, v1}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/ContactsUploadService;Lcom/twitter/sdk/android/core/m;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->a:Lcom/digits/sdk/android/models/j;

    iget-object v1, v1, Lcom/digits/sdk/android/models/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->d:Lcom/digits/sdk/android/ContactsUploadService;

    invoke-static {v1, v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/ContactsUploadService;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/digits/sdk/android/ContactsUploadService$1;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
