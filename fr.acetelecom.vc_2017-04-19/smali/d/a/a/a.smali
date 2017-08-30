.class public final Ld/a/a/a;
.super Ld/e$a;


# instance fields
.field private final a:Lcom/google/a/f;


# direct methods
.method private constructor <init>(Lcom/google/a/f;)V
    .locals 2

    invoke-direct {p0}, Ld/e$a;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ld/a/a/a;->a:Lcom/google/a/f;

    return-void
.end method

.method public static a()Ld/a/a/a;
    .locals 1

    new-instance v0, Lcom/google/a/f;

    invoke-direct {v0}, Lcom/google/a/f;-><init>()V

    invoke-static {v0}, Ld/a/a/a;->a(Lcom/google/a/f;)Ld/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/a/f;)Ld/a/a/a;
    .locals 1

    new-instance v0, Ld/a/a/a;

    invoke-direct {v0, p0}, Ld/a/a/a;-><init>(Lcom/google/a/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/m;",
            ")",
            "Ld/e",
            "<",
            "Lb/ac;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ld/a/a/a;->a:Lcom/google/a/f;

    invoke-static {p1}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    new-instance v1, Ld/a/a/c;

    iget-object v2, p0, Ld/a/a/a;->a:Lcom/google/a/f;

    invoke-direct {v1, v2, v0}, Ld/a/a/c;-><init>(Lcom/google/a/f;Lcom/google/a/w;)V

    return-object v1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/m;",
            ")",
            "Ld/e",
            "<*",
            "Lb/aa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld/a/a/a;->a:Lcom/google/a/f;

    invoke-static {p1}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    new-instance v1, Ld/a/a/b;

    iget-object v2, p0, Ld/a/a/a;->a:Lcom/google/a/f;

    invoke-direct {v1, v2, v0}, Ld/a/a/b;-><init>(Lcom/google/a/f;Lcom/google/a/w;)V

    return-object v1
.end method
