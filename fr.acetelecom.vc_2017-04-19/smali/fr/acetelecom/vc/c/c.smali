.class Lfr/acetelecom/vc/c/c;
.super Ljava/lang/Exception;


# instance fields
.field private a:Lfr/acetelecom/vc/c/e;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lfr/acetelecom/vc/c/e;

    invoke-direct {v0, p1, p2}, Lfr/acetelecom/vc/c/e;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/c/c;-><init>(Lfr/acetelecom/vc/c/e;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lfr/acetelecom/vc/c/e;

    invoke-direct {v0, p1, p2}, Lfr/acetelecom/vc/c/e;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lfr/acetelecom/vc/c/c;-><init>(Lfr/acetelecom/vc/c/e;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lfr/acetelecom/vc/c/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/acetelecom/vc/c/c;-><init>(Lfr/acetelecom/vc/c/e;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lfr/acetelecom/vc/c/e;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Lfr/acetelecom/vc/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lfr/acetelecom/vc/c/c;->a:Lfr/acetelecom/vc/c/e;

    return-void
.end method


# virtual methods
.method public a()Lfr/acetelecom/vc/c/e;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/c/c;->a:Lfr/acetelecom/vc/c/e;

    return-object v0
.end method
