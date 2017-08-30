.class final Ld/a;
.super Ld/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a$e;,
        Ld/a$a;,
        Ld/a$c;,
        Ld/a$b;,
        Ld/a$f;,
        Ld/a$d;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/e;
    .locals 1
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

    const-class v0, Lb/ac;

    if-ne p1, v0, :cond_1

    const-class v0, Ld/b/u;

    invoke-static {p2, v0}, Ld/o;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld/a$c;->a:Ld/a$c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ld/a$a;->a:Ld/a$a;

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    sget-object v0, Ld/a$f;->a:Ld/a$f;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/e;
    .locals 2
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

    const-class v0, Lb/aa;

    invoke-static {p1}, Ld/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld/a$b;->a:Ld/a$b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/m;",
            ")",
            "Ld/e",
            "<*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    sget-object v0, Ld/a$d;->a:Ld/a$d;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
