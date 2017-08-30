.class public Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel$Status;
    }
.end annotation


# instance fields
.field public config:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

.field public error_message:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
