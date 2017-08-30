.class public Lcom/tapjoy/TJPlacementData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJPlacementData;->updateUrl(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJPlacementData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tapjoy/TJPlacementData;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJPlacementData;->f:I

    return v0
.end method

.method public getMediationURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJPlacementData;->h:I

    return v0
.end method

.method public hasProgressSpinner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->i:Z

    return v0
.end method

.method public isBaseActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    return v0
.end method

.method public isPreloadDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    return v0
.end method

.method public isPrerenderingRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    return v0
.end method

.method public resetPlacementRequestData()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setHttpStatusCode(I)V

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setPrerenderingRequested(Z)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setPreloadDisabled(Z)V

    return-void
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    return-void
.end method

.method public setHasProgressSpinner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->i:Z

    return-void
.end method

.method public setHttpResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    return-void
.end method

.method public setHttpStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/tapjoy/TJPlacementData;->f:I

    return-void
.end method

.method public setMediationURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->d:Ljava/lang/String;

    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->g:Ljava/lang/String;

    return-void
.end method

.method public setPreloadDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    return-void
.end method

.method public setPrerenderingRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    return-void
.end method

.method public setRedirectURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->j:Ljava/lang/String;

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    iput p1, p0, Lcom/tapjoy/TJPlacementData;->h:I

    return-void
.end method

.method public updateUrl(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x2f

    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
