.class public Lorg/ahocorasick/trie/TrieConfig;
.super Ljava/lang/Object;
.source "TrieConfig.java"


# instance fields
.field private allowOverlaps:Z

.field private caseInsensitive:Z

.field private onlyWholeWords:Z

.field private onlyWholeWordsWhiteSpaceSeparated:Z

.field private stopOnHit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->allowOverlaps:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->onlyWholeWords:Z

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->onlyWholeWordsWhiteSpaceSeparated:Z

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->caseInsensitive:Z

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->stopOnHit:Z

    return-void
.end method


# virtual methods
.method public isAllowOverlaps()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->allowOverlaps:Z

    return v0
.end method

.method public isCaseInsensitive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->caseInsensitive:Z

    return v0
.end method

.method public isOnlyWholeWords()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->onlyWholeWords:Z

    return v0
.end method

.method public isOnlyWholeWordsWhiteSpaceSeparated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->onlyWholeWordsWhiteSpaceSeparated:Z

    return v0
.end method

.method public isStopOnHit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->stopOnHit:Z

    return v0
.end method
