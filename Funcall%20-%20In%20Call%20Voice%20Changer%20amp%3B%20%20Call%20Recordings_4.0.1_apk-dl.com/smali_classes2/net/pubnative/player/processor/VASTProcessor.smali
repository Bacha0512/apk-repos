.class public final Lnet/pubnative/player/processor/VASTProcessor;
.super Ljava/lang/Object;
.source "VASTProcessor.java"


# static fields
.field private static final IS_VALIDATION_ON:Z = false

.field private static final MAX_VAST_LEVELS:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mediaPicker:Lnet/pubnative/player/processor/VASTMediaPicker;

.field private mergedVastDocs:Ljava/lang/StringBuilder;

.field private vastModel:Lnet/pubnative/player/model/VASTModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lnet/pubnative/player/processor/VASTProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/pubnative/player/processor/VASTMediaPicker;)V
    .locals 2
    .param p1, "mediaPicker"    # Lnet/pubnative/player/processor/VASTMediaPicker;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lnet/pubnative/player/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    .line 74
    iput-object p1, p0, Lnet/pubnative/player/processor/VASTProcessor;->mediaPicker:Lnet/pubnative/player/processor/VASTMediaPicker;

    .line 75
    return-void
.end method

.method private createDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 197
    sget-object v2, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v3, "About to create doc from InputStream"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 201
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    .line 202
    sget-object v2, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Doc successfully created."

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private merge(Lorg/w3c/dom/Document;)V
    .locals 5
    .param p1, "newDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 214
    sget-object v3, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v4, "About to merge doc into main doc."

    invoke-static {v3, v4}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "VAST"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 218
    .local v2, "nl":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 220
    .local v1, "newDocElement":Lorg/w3c/dom/Node;
    invoke-static {v1}, Lnet/pubnative/player/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "doc":Ljava/lang/String;
    iget-object v3, p0, Lnet/pubnative/player/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    sget-object v3, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v4, "Merge successful."

    invoke-static {v3, v4}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private processUri(Ljava/io/InputStream;I)I
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "depth"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    sget-object v9, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v10, "processUri"

    invoke-static {v9, v10}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v9, 0x5

    if-lt p2, v9, :cond_1

    .line 141
    const-string v3, "VAST wrapping exceeded max limit of 5."

    .line 142
    .local v3, "message":Ljava/lang/String;
    sget-object v9, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    invoke-static {v9, v3}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x4

    .line 191
    .end local v3    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lnet/pubnative/player/processor/VASTProcessor;->createDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 148
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-nez v0, :cond_2

    .line 150
    const/4 v2, 0x2

    goto :goto_0

    .line 153
    :cond_2
    invoke-direct {p0, v0}, Lnet/pubnative/player/processor/VASTProcessor;->merge(Lorg/w3c/dom/Document;)V

    .line 156
    sget-object v9, Lnet/pubnative/player/model/VAST_DOC_ELEMENTS;->vastAdTagURI:Lnet/pubnative/player/model/VAST_DOC_ELEMENTS;

    invoke-virtual {v9}, Lnet/pubnative/player/model/VAST_DOC_ELEMENTS;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 158
    .local v8, "uriToNextDoc":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    sget-object v9, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v10, "Doc is a wrapper. "

    invoke-static {v9, v10}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 169
    .local v7, "node":Lorg/w3c/dom/Node;
    invoke-static {v7}, Lnet/pubnative/player/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "nextUri":Ljava/lang/String;
    sget-object v9, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapper URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v4, 0x0

    .line 175
    .local v4, "nextInputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    .local v6, "nextUrl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 184
    add-int/lit8 v9, p2, 0x1

    invoke-direct {p0, v4, v9}, Lnet/pubnative/player/processor/VASTProcessor;->processUri(Ljava/io/InputStream;I)I

    move-result v2

    .line 187
    .local v2, "error":I
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v9

    goto :goto_0

    .line 178
    .end local v2    # "error":I
    .end local v6    # "nextUrl":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private wrapMergedVastDocWithVasts()Lorg/w3c/dom/Document;
    .locals 5

    .prologue
    .line 124
    sget-object v2, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v3, "wrapmergedVastDocWithVasts"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lnet/pubnative/player/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const-string v4, "<VASTS>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v2, p0, Lnet/pubnative/player/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    const-string v3, "</VASTS>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v2, p0, Lnet/pubnative/player/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "merged":Ljava/lang/String;
    sget-object v2, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merged VAST doc:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v1}, Lnet/pubnative/player/util/XmlTools;->stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 132
    .local v0, "doc":Lorg/w3c/dom/Document;
    return-object v0
.end method


# virtual methods
.method public getModel()Lnet/pubnative/player/model/VASTModel;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnet/pubnative/player/processor/VASTProcessor;->vastModel:Lnet/pubnative/player/model/VASTModel;

    return-object v0
.end method

.method public process(Ljava/lang/String;)I
    .locals 9
    .param p1, "xmlData"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 84
    sget-object v7, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    const-string v8, "process"

    invoke-static {v7, v8}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v7, 0x0

    iput-object v7, p0, Lnet/pubnative/player/processor/VASTProcessor;->vastModel:Lnet/pubnative/player/model/VASTModel;

    .line 86
    const/4 v2, 0x0

    .line 89
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    invoke-direct {p0, v3, v6}, Lnet/pubnative/player/processor/VASTProcessor;->processUri(Ljava/io/InputStream;I)I

    move-result v1

    .line 98
    .local v1, "error":I
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_0
    if-eqz v1, :cond_0

    move-object v2, v3

    .line 119
    .end local v1    # "error":I
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_1
    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lnet/pubnative/player/processor/VASTProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v5

    .line 92
    goto :goto_1

    .line 106
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "error":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/player/processor/VASTProcessor;->wrapMergedVastDocWithVasts()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 107
    .local v4, "mainDoc":Lorg/w3c/dom/Document;
    new-instance v7, Lnet/pubnative/player/model/VASTModel;

    invoke-direct {v7, v4}, Lnet/pubnative/player/model/VASTModel;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v7, p0, Lnet/pubnative/player/processor/VASTProcessor;->vastModel:Lnet/pubnative/player/model/VASTModel;

    .line 109
    if-nez v4, :cond_1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    move v1, v5

    .line 111
    goto :goto_1

    .line 114
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_1
    iget-object v5, p0, Lnet/pubnative/player/processor/VASTProcessor;->vastModel:Lnet/pubnative/player/model/VASTModel;

    iget-object v7, p0, Lnet/pubnative/player/processor/VASTProcessor;->mediaPicker:Lnet/pubnative/player/processor/VASTMediaPicker;

    invoke-static {v5, v7}, Lnet/pubnative/player/processor/VASTModelPostValidator;->validate(Lnet/pubnative/player/model/VASTModel;Lnet/pubnative/player/processor/VASTMediaPicker;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    const/4 v1, 0x3

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    move v1, v6

    .line 119
    goto :goto_1

    .line 99
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "mainDoc":Lorg/w3c/dom/Document;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_0
.end method
