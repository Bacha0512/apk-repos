.class final Lcom/tapjoy/internal/gl;
.super Lcom/tapjoy/internal/gb;

# interfaces
.implements Lcom/tapjoy/internal/fd;


# static fields
.field public static final a:Lcom/tapjoy/internal/bm;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gl$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl;->a:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/gb;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gl;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/gl;->c:Ljava/lang/String;

    iput p3, p0, Lcom/tapjoy/internal/gl;->d:I

    iput-object p4, p0, Lcom/tapjoy/internal/gl;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gl;->d:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gl;->e:Ljava/lang/String;

    return-object v0
.end method
