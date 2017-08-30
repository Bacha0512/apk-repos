.class Lcom/digits/sdk/android/ai;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lb/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lb/w;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/ah;

    invoke-direct {v0}, Lcom/digits/sdk/android/ah;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/digits/sdk/android/ai;-><init>(Ljava/lang/Class;Lb/w;Lcom/digits/sdk/android/ah;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lb/w;Lcom/digits/sdk/android/ah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lb/w;",
            "Lcom/digits/sdk/android/ah;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/g;

    invoke-direct {v0}, Lcom/google/a/g;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/a/f;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/x;)Lcom/google/a/g;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/a/g;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/x;)Lcom/google/a/g;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/internal/e;

    invoke-direct {v1}, Lcom/digits/sdk/android/internal/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/x;)Lcom/google/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/g;->a()Lcom/google/a/f;

    move-result-object v0

    new-instance v1, Ld/m$a;

    invoke-direct {v1}, Ld/m$a;-><init>()V

    invoke-virtual {v1, p2}, Ld/m$a;->a(Lb/w;)Ld/m$a;

    move-result-object v1

    invoke-virtual {p3}, Lcom/digits/sdk/android/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/m$a;->a(Ljava/lang/String;)Ld/m$a;

    move-result-object v1

    invoke-static {v0}, Ld/a/a/a;->a(Lcom/google/a/f;)Ld/a/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld/m$a;->a(Ld/e$a;)Ld/m$a;

    move-result-object v0

    invoke-virtual {v0}, Ld/m$a;->a()Ld/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/ai;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/ai;->a:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Object;)Lcom/digits/sdk/android/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TI;)",
            "Lcom/digits/sdk/android/ai",
            "<TI;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mock interface must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/digits/sdk/android/ai;

    invoke-direct {v0, p0}, Lcom/digits/sdk/android/ai;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/ai;->a:Ljava/lang/Object;

    return-object v0
.end method
