.class public final Ld/l;
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
.field private final a:Lb/ab;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lb/ac;


# direct methods
.method private constructor <init>(Lb/ab;Ljava/lang/Object;Lb/ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ab;",
            "TT;",
            "Lb/ac;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/l;->a:Lb/ab;

    iput-object p2, p0, Ld/l;->b:Ljava/lang/Object;

    iput-object p3, p0, Ld/l;->c:Lb/ac;

    return-void
.end method

.method public static a(Lb/ac;Lb/ab;)Ld/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/ac;",
            "Lb/ab;",
            ")",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lb/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ld/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Ld/l;-><init>(Lb/ab;Ljava/lang/Object;Lb/ac;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ld/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lb/ab$a;

    invoke-direct {v0}, Lb/ab$a;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lb/ab$a;->a(Ljava/lang/String;)Lb/ab$a;

    move-result-object v0

    sget-object v1, Lb/x;->b:Lb/x;

    invoke-virtual {v0, v1}, Lb/ab$a;->a(Lb/x;)Lb/ab$a;

    move-result-object v0

    new-instance v1, Lb/z$a;

    invoke-direct {v1}, Lb/z$a;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lb/z$a;->a(Ljava/lang/String;)Lb/z$a;

    move-result-object v1

    invoke-virtual {v1}, Lb/z$a;->a()Lb/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ab$a;->a(Lb/z;)Lb/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/ab$a;->a()Lb/ab;

    move-result-object v0

    invoke-static {p0, v0}, Ld/l;->a(Ljava/lang/Object;Lb/ab;)Ld/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lb/ab;)Ld/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lb/ab;",
            ")",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lb/ab;->c()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ld/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ld/l;-><init>(Lb/ab;Ljava/lang/Object;Lb/ac;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Ld/l;->a:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->b()I

    move-result v0

    return v0
.end method

.method public b()Lb/r;
    .locals 1

    iget-object v0, p0, Ld/l;->a:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->e()Lb/r;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ld/l;->a:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->c()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ld/l;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Lb/ac;
    .locals 1

    iget-object v0, p0, Ld/l;->c:Lb/ac;

    return-object v0
.end method
