.class Ld/j$b;
.super Ld/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/j$b$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/j;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/util/concurrent/Executor;)Ld/c$a;
    .locals 1

    new-instance v0, Ld/g;

    invoke-direct {v0, p1}, Ld/g;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Ld/j$b$a;

    invoke-direct {v0}, Ld/j$b$a;-><init>()V

    return-object v0
.end method
