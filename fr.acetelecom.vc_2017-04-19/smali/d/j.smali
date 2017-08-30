.class Ld/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/j$b;,
        Ld/j$a;,
        Ld/j$c;
    }
.end annotation


# static fields
.field private static final a:Ld/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ld/j;->c()Ld/j;

    move-result-object v0

    sput-object v0, Ld/j;->a:Ld/j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ld/j;
    .locals 1

    sget-object v0, Ld/j;->a:Ld/j;

    return-object v0
.end method

.method private static c()Ld/j;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    new-instance v0, Ld/j$a;

    invoke-direct {v0}, Ld/j$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    const-string v0, "java.util.Optional"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Ld/j$c;

    invoke-direct {v0}, Ld/j$c;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "org.robovm.apple.foundation.NSObject"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Ld/j$b;

    invoke-direct {v0}, Ld/j$b;-><init>()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Ld/j;

    invoke-direct {v0}, Ld/j;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/concurrent/Executor;)Ld/c$a;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ld/g;

    invoke-direct {v0, p1}, Ld/g;-><init>(Ljava/util/concurrent/Executor;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ld/f;->a:Ld/c$a;

    goto :goto_0
.end method

.method varargs a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method a(Ljava/lang/reflect/Method;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
