.class public Lnet/pubnative/player/model/VASTModel;
.super Ljava/lang/Object;
.source "VASTModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static EXTENSION_POSTVIEW_BANNER:Ljava/lang/String; = null

.field private static final EXTENSION_TYPE_KEY:Ljava/lang/String; = "{EXTENSION_TYPE}"

.field private static TAG:Ljava/lang/String; = null

.field private static final XPATH_BANNER:Ljava/lang/String; = "//Extension[@type=\'{EXTENSION_TYPE}\']/Banner"

.field private static final XPATH_COMBINED_TRACKING:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final XPATH_DURATION:Ljava/lang/String; = "//Duration"

.field private static final XPATH_ERROR:Ljava/lang/String; = "//Error"

.field private static final XPATH_IMPRESSION:Ljava/lang/String; = "//Impression"

.field private static final XPATH_INLINE_LINEAR_TRACKING:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final XPATH_INLINE_NONLINEAR_TRACKING:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final XPATH_MEDIA_FILE:Ljava/lang/String; = "//MediaFile"

.field private static final XPATH_VIDEO_CLICKS:Ljava/lang/String; = "//VideoClicks"

.field private static final XPATH_WRAPPER_LINEAR_TRACKING:Ljava/lang/String; = "/VASTS/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final XPATH_WRAPPER_NONLINEAR_TRACKING:Ljava/lang/String; = "/VASTS/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final serialVersionUID:J = 0x3beded0d26129615L


# instance fields
.field private pickedMediaFileURL:Ljava/lang/String;

.field private transient vastsDocument:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "PN-Postview-Banner"

    sput-object v0, Lnet/pubnative/player/model/VASTModel;->EXTENSION_POSTVIEW_BANNER:Ljava/lang/String;

    .line 59
    const-class v0, Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "vasts"    # Lorg/w3c/dom/Document;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/player/model/VASTModel;->pickedMediaFileURL:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 87
    return-void
.end method

.method private getListFromXPath(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "xPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    sget-object v6, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v7, "getListFromXPath"

    invoke-static {v6, v7}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    .line 353
    .local v5, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    iget-object v6, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v5, p1, v6, v7}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 356
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_0

    .line 358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 360
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 361
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-static {v3}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    const/4 v2, 0x0

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    sget-object v1, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "readObject: about to read"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 390
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    .local v0, "vastString":Ljava/lang/String;
    sget-object v1, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vastString data is:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {v0}, Lnet/pubnative/player/util/XmlTools;->stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 395
    sget-object v1, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "done reading"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v1, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "writeObject: about to write"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 379
    iget-object v1, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    invoke-static {v1}, Lnet/pubnative/player/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 382
    sget-object v1, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "done writing"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method


# virtual methods
.method public getDuration()Ljava/lang/String;
    .locals 9

    .prologue
    .line 224
    sget-object v6, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v7, "getDuration"

    invoke-static {v6, v7}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "duration":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    .line 232
    .local v5, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v6, "//Duration"

    iget-object v7, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v6, v7, v8}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 235
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_0

    .line 237
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 239
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 240
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-static {v3}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    const/4 v6, 0x0

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .restart local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_0
    move-object v6, v0

    goto :goto_1
.end method

.method public getErrorUrl()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    sget-object v1, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "getErrorUrl"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "//Error"

    invoke-direct {p0, v1}, Lnet/pubnative/player/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 340
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getExtensionURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, "result":Ljava/lang/String;
    const-string v3, "//Extension[@type=\'{EXTENSION_TYPE}\']/Banner"

    const-string v4, "{EXTENSION_TYPE}"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "xPath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/pubnative/player/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 260
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 262
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 265
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getImpressions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    sget-object v1, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "getImpressions"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "//Impression"

    invoke-direct {p0, v1}, Lnet/pubnative/player/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 331
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/player/model/VASTMediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 157
    sget-object v11, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v12, "getMediaFiles"

    invoke-static {v11, v12}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v5, "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/pubnative/player/model/VASTMediaFile;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v9

    .line 165
    .local v9, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v11, "//MediaFile"

    iget-object v12, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v9, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/NodeList;

    .line 171
    .local v8, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_2

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 175
    new-instance v4, Lnet/pubnative/player/model/VASTMediaFile;

    invoke-direct {v4}, Lnet/pubnative/player/model/VASTMediaFile;-><init>()V

    .line 176
    .local v4, "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 177
    .local v7, "node":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 179
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v11, "apiFramework"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 180
    .local v0, "attributeNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    move-object v11, v10

    :goto_1
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setApiFramework(Ljava/lang/String;)V

    .line 182
    const-string v11, "bitrate"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 183
    if-nez v0, :cond_1

    move-object v11, v10

    :goto_2
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setBitrate(Ljava/math/BigInteger;)V

    .line 185
    const-string v11, "delivery"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 186
    if-nez v0, :cond_3

    move-object v11, v10

    :goto_3
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setDelivery(Ljava/lang/String;)V

    .line 188
    const-string v11, "height"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 189
    if-nez v0, :cond_4

    move-object v11, v10

    :goto_4
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setHeight(Ljava/math/BigInteger;)V

    .line 191
    const-string v11, "id"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 192
    if-nez v0, :cond_5

    move-object v11, v10

    :goto_5
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setId(Ljava/lang/String;)V

    .line 194
    const-string v11, "maintainAspectRatio"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 195
    if-nez v0, :cond_6

    move-object v11, v10

    :goto_6
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setMaintainAspectRatio(Ljava/lang/Boolean;)V

    .line 197
    const-string v11, "scalable"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 198
    if-nez v0, :cond_7

    move-object v11, v10

    :goto_7
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setScalable(Ljava/lang/Boolean;)V

    .line 200
    const-string v11, "type"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 201
    if-nez v0, :cond_8

    move-object v11, v10

    :goto_8
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setType(Ljava/lang/String;)V

    .line 203
    const-string v11, "width"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 204
    if-nez v0, :cond_9

    move-object v11, v10

    :goto_9
    invoke-virtual {v4, v11}, Lnet/pubnative/player/model/VASTMediaFile;->setWidth(Ljava/math/BigInteger;)V

    .line 206
    invoke-static {v7}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "mediaURL":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lnet/pubnative/player/model/VASTMediaFile;->setValue(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 180
    .end local v6    # "mediaURL":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 183
    :cond_1
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 213
    .end local v0    # "attributeNode":Lorg/w3c/dom/Node;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    .end local v4    # "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    .end local v7    # "node":Lorg/w3c/dom/Node;
    .end local v8    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v10

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/pubnative/player/model/VASTMediaFile;>;"
    :cond_2
    return-object v5

    .line 186
    .restart local v0    # "attributeNode":Lorg/w3c/dom/Node;
    .restart local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v3    # "i":I
    .restart local v4    # "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    .restart local v5    # "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/pubnative/player/model/VASTMediaFile;>;"
    .restart local v7    # "node":Lorg/w3c/dom/Node;
    .restart local v8    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_3
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 189
    :cond_4
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 192
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 195
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_6

    .line 198
    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_7

    .line 201
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 204
    :cond_9
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9
.end method

.method public getPickedMediaFileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lnet/pubnative/player/model/VASTModel;->pickedMediaFileURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingUrls()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v11, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v12, "getTrackingUrls"

    invoke-static {v11, v12}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v9, "trackings":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v10

    .line 105
    .local v10, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v11, "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

    iget-object v12, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/NodeList;

    .line 111
    .local v6, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_0

    .line 113
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 115
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 116
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 118
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v11, "event"

    invoke-interface {v0, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 122
    .local v2, "eventName":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->valueOf(Ljava/lang/String;)Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 130
    .local v4, "key":Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;
    :try_start_2
    invoke-static {v5}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "trackingURL":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 134
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 135
    .local v7, "tracking":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v4    # "key":Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;
    .end local v7    # "tracking":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "trackingURL":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v11, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Event:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not valid. Skipping it."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lnet/pubnative/player/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 146
    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "eventName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    .end local v6    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    const/4 v9, 0x0

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v9    # "trackings":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    return-object v9

    .line 139
    .restart local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v2    # "eventName":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "key":Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;
    .restart local v5    # "node":Lorg/w3c/dom/Node;
    .restart local v6    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "trackingURL":Ljava/lang/String;
    .restart local v9    # "trackings":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .restart local v7    # "tracking":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v9, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public getVastsDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getVideoClicks()Lnet/pubnative/player/model/VideoClicks;
    .locals 14

    .prologue
    .line 270
    sget-object v11, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v12, "getVideoClicks"

    invoke-static {v11, v12}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v9, Lnet/pubnative/player/model/VideoClicks;

    invoke-direct {v9}, Lnet/pubnative/player/model/VideoClicks;-><init>()V

    .line 274
    .local v9, "videoClicks":Lnet/pubnative/player/model/VideoClicks;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v10

    .line 278
    .local v10, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v11, "//VideoClicks"

    iget-object v12, p0, Lnet/pubnative/player/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/NodeList;

    .line 281
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_2

    .line 283
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 285
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 287
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 290
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 292
    .local v8, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v1, v11, :cond_4

    .line 294
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 295
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "nodeName":Ljava/lang/String;
    const-string v11, "ClickTracking"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 299
    invoke-static {v0}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 300
    invoke-virtual {v9}, Lnet/pubnative/player/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_1
    const-string v11, "ClickThrough"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 304
    invoke-static {v0}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-virtual {v9, v8}, Lnet/pubnative/player/model/VideoClicks;->setClickThrough(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 316
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "childIndex":I
    .end local v2    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v4    # "i":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 318
    .local v3, "e":Ljava/lang/Exception;
    sget-object v11, Lnet/pubnative/player/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    const/4 v9, 0x0

    .line 322
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "videoClicks":Lnet/pubnative/player/model/VideoClicks;
    :cond_2
    return-object v9

    .line 307
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v1    # "childIndex":I
    .restart local v2    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v4    # "i":I
    .restart local v5    # "node":Lorg/w3c/dom/Node;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "value":Ljava/lang/String;
    .restart local v9    # "videoClicks":Lnet/pubnative/player/model/VideoClicks;
    :cond_3
    :try_start_1
    const-string v11, "CustomClick"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 309
    invoke-static {v0}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 310
    invoke-virtual {v9}, Lnet/pubnative/player/model/VideoClicks;->getCustomClick()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 283
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v6    # "nodeName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setPickedMediaFileURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "pickedMediaFileURL"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lnet/pubnative/player/model/VASTModel;->pickedMediaFileURL:Ljava/lang/String;

    .line 406
    return-void
.end method
