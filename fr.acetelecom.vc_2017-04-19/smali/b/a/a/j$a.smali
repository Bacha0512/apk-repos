.class final Lb/a/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:[Lb/a/a/j$a;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lb/a/a/j$a;

    iput-object v0, p0, Lb/a/a/j$a;->a:[Lb/a/a/j$a;

    iput v1, p0, Lb/a/a/j$a;->b:I

    iput v1, p0, Lb/a/a/j$a;->c:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/j$a;->a:[Lb/a/a/j$a;

    iput p1, p0, Lb/a/a/j$a;->b:I

    and-int/lit8 v0, p2, 0x7

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lb/a/a/j$a;->c:I

    return-void
.end method

.method static synthetic a(Lb/a/a/j$a;)[Lb/a/a/j$a;
    .locals 1

    iget-object v0, p0, Lb/a/a/j$a;->a:[Lb/a/a/j$a;

    return-object v0
.end method

.method static synthetic b(Lb/a/a/j$a;)I
    .locals 1

    iget v0, p0, Lb/a/a/j$a;->b:I

    return v0
.end method

.method static synthetic c(Lb/a/a/j$a;)I
    .locals 1

    iget v0, p0, Lb/a/a/j$a;->c:I

    return v0
.end method
