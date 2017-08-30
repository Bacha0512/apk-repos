.class final Ld/g;
.super Ld/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/g$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ld/c$a;-><init>()V

    iput-object p1, p0, Ld/g;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/m;",
            ")",
            "Ld/c",
            "<",
            "Ld/b",
            "<*>;>;"
        }
    .end annotation

    invoke-static {p1}, Ld/g;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ld/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ld/o;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v0, Ld/g$1;

    invoke-direct {v0, p0, v1}, Ld/g$1;-><init>(Ld/g;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
