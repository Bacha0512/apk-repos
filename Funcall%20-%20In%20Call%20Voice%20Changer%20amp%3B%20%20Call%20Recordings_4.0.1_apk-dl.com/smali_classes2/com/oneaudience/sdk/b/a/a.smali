.class public Lcom/oneaudience/sdk/b/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/io/File;

.field private final d:Lcom/oneaudience/sdk/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneaudience/sdk/b/a/b",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/b/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/oneaudience/sdk/b/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/oneaudience/sdk/b/a/b",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneaudience/sdk/b/a/a;->c:Ljava/io/File;

    iput-object p2, p0, Lcom/oneaudience/sdk/b/a/a;->d:Lcom/oneaudience/sdk/b/a/b;

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->d:Lcom/oneaudience/sdk/b/a/b;

    iget-object v1, p0, Lcom/oneaudience/sdk/b/a/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/oneaudience/sdk/b/a/b;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->d:Lcom/oneaudience/sdk/b/a/b;

    iget-object v1, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/oneaudience/sdk/b/a/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/oneaudience/sdk/b/a/b;->a(Ljava/lang/Object;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/b/a/a;->b(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Z)Z
    .locals 2

    sget-object v0, Lcom/oneaudience/sdk/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Unable to write to file commit"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/oneaudience/sdk/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Resetting FileMap..."

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Resetting FileMap... DONE"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/b/a/a;->a(Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileMap{mStoredMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/b/a/a;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSourceFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/b/a/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFilePipe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/b/a/a;->d:Lcom/oneaudience/sdk/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
