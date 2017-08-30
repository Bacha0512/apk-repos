.class public Lcom/android/volley/s;
.super Ljava/lang/Exception;


# instance fields
.field public final a:Lcom/android/volley/i;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/s;->a:Lcom/android/volley/i;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/android/volley/s;->a:Lcom/android/volley/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/s;->a:Lcom/android/volley/i;

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/volley/s;->b:J

    return-void
.end method
